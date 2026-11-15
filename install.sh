#!/bin/bash
# Orin installer for macOS
#   curl -fsSL https://raw.githubusercontent.com/hrxshxx/Orin/main/install.sh | bash
set -euo pipefail

REPO="hrxshxx/Orin"
BH_URL="https://existential.audio/downloads/BlackHole2ch-0.7.1.pkg"
BH_SHA256="57b540f27a3e29c37e310e01bee0fdfab76733087e47f997ef9dccf851400dcf"

bold() { printf "\033[1m%s\033[0m\n" "$1"; }
fail() { printf "\033[31mError:\033[0m %s\n" "$1" >&2; exit 1; }

[ "$(uname)" = "Darwin" ] || fail "Orin runs on macOS only."
[ "$(sw_vers -productVersion | cut -d. -f1)" -ge 26 ] || fail "Orin needs macOS 26 or later."

TMP=$(mktemp -d)
MNT=""
cleanup() { [ -n "$MNT" ] && hdiutil detach "$MNT" -quiet 2>/dev/null; rm -rf "$TMP"; }
trap cleanup EXIT

bold "Installing Orin…"
URL=$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest" \
  | grep -o '"browser_download_url": *"[^"]*\.dmg"' | head -1 | sed -E 's/.*"(https[^"]+)"/\1/')
[ -n "$URL" ] || fail "Couldn't find the latest Orin release."

curl -fL --progress-bar -o "$TMP/Orin.dmg" "$URL"
MNT=$(hdiutil attach "$TMP/Orin.dmg" -nobrowse -readonly -noautoopen 2>/dev/null | grep -o '/Volumes/.*$' | tail -1)
[ -d "$MNT/Orin.app" ] || fail "The downloaded disk image looks damaged."

pkill -x Orin 2>/dev/null || true
if [ -w /Applications ]; then
  rm -rf /Applications/Orin.app && ditto "$MNT/Orin.app" /Applications/Orin.app
else
  sudo rm -rf /Applications/Orin.app && sudo ditto "$MNT/Orin.app" /Applications/Orin.app
fi
echo "✓ Orin installed to /Applications"

if system_profiler SPAudioDataType 2>/dev/null | grep -q "BlackHole 2ch"; then
  echo "✓ BlackHole 2ch already installed"
else
  bold "Installing BlackHole 2ch audio driver (free)…"
  curl -fsSL -o "$TMP/BlackHole2ch.pkg" "$BH_URL"
  echo "$BH_SHA256  $TMP/BlackHole2ch.pkg" | shasum -a 256 -c --status || fail "BlackHole download didn't match its checksum."
  echo "macOS will ask for your password to install the driver."
  sudo /usr/sbin/installer -pkg "$TMP/BlackHole2ch.pkg" -target / >/dev/null
  echo "✓ BlackHole 2ch installed"
fi

open /Applications/Orin.app
bold "Done. Orin is in your menu bar."
