# Orin Privacy Policy

_Last updated: 15 November 2026_

Orin is a microphone booster for macOS developed by Hrishi. Your privacy matters, so Orin is built to keep everything on your Mac.

## What Orin accesses

| What | Why | Where it goes |
|---|---|---|
| **Microphone** | To boost and shape your voice in real time | Processed in memory on your Mac and passed to the audio device you choose. Never recorded, stored or sent anywhere. |
| **Audio devices list** | To let you pick your microphone and output | Stays on your Mac |
| **Your settings and presets** | To remember your boost, equalizer and saved presets | Saved locally in your Mac's app preferences |

## What Orin does **not** do

- No accounts, sign-ins or personal information
- No analytics, telemetry, crash reporting or tracking
- No advertising
- No recording, saving or uploading of your voice
- No selling or sharing of any data, because Orin collects none

## Network use

Orin connects to the internet in one case only. If the free **BlackHole 2ch** audio driver isn't installed, Orin downloads it from its official website (`existential.audio`) and checks the file's integrity before installing it. No information about you is sent. The Terminal installer also downloads Orin itself from GitHub.

## Permissions

macOS asks you to allow microphone access, and installing the audio driver asks for your password. Your password goes directly to macOS; Orin never sees or stores it. You can turn off microphone access at any time in **System Settings › Privacy & Security › Microphone**.

## Removing your data

Delete Orin from Applications. To also remove your saved settings, run:

```bash
defaults delete local.orin.app
```

## Contact

Questions about privacy? Ask on the [Orin Discord server](https://discord.gg/QEykkuk6Gq).
