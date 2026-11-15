<p align="center">
  <img src="assets/banner.png" alt="Orin: your voice, louder." width="100%">
</p>

<p align="center">
  <a href="https://github.com/hrxshxx/Orin/releases/latest"><img src="https://img.shields.io/github/v/release/hrxshxx/Orin?style=for-the-badge&color=8b3dff&label=Download" alt="Download"></a>
  <img src="https://img.shields.io/badge/macOS-26%2B-111111?style=for-the-badge&logo=apple&logoColor=white" alt="macOS 26+">
  <img src="https://img.shields.io/badge/Apple%20Silicon-Native-111111?style=for-the-badge" alt="Apple Silicon">
  <a href="https://discord.gg/QEykkuk6Gq"><img src="https://img.shields.io/badge/Discord-Chill%20w%2F%20Hrishi-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Chill w/ Hrishi Discord server"></a>
</p>

<p align="center">
  Orin makes your mic louder in every app on your Mac.<br>
  Turn it on, pick BlackHole 2ch as your mic in Discord, WhatsApp, Zoom or OBS, and people hear you properly.
</p>

<p align="center">
  <img src="assets/app.png" alt="Orin app window" width="720">
</p>

## What it does

- Boosts your voice by up to +60 dB with one click.
- Rage adds extra gain on top of the boost, for a loud, distorted sound when you want it.
- The noise gate cuts fan hum and keyboard clicks while you're not talking.
- Bit crush gives you a lo-fi, radio-style voice.
- A 6-band equalizer covers 100 Hz to 12 kHz, so you can add bass or clear up muddy audio.
- It comes with three presets (Natural, Loud and Max Rage), and you can save three of your own.
- Mute silences your mic straight away. Clean switches the boost off without stopping Orin.
- The O in your menu bar lets you turn Orin on or off, mute, change the boost and switch presets without opening the window.
- It follows your Mac's light or dark mode and your accent colour.

## Install

### Download

1. Download the Orin `.dmg` from the [latest release](https://github.com/hrxshxx/Orin/releases/latest).
2. Open it and drag Orin into Applications.
3. Open Orin from Applications.

<p align="center">
  <img src="assets/installer.png" alt="Orin installer" width="560">
</p>

### Terminal

Paste this into Terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/hrxshxx/Orin/main/install.sh | bash
```

It puts the latest Orin in Applications, installs the audio driver if you don't have it, and opens the app.

### The first time you open Orin

Orin sends your voice to other apps through [BlackHole 2ch](https://existential.audio/blackhole/), a free audio driver. If it isn't on your Mac yet, Orin installs it for you, and macOS asks for your password once.

macOS will also ask whether Orin can use the microphone. Click Allow, otherwise Orin can't hear you.

If macOS says Orin can't be opened, right-click Orin in Applications, choose Open, then click Open again. You only have to do this the first time.

## How to use it

1. Click the power button in Orin, or the O in your menu bar.
2. In Discord, WhatsApp, Zoom or whatever app you're using, set the microphone (sometimes called input device) to BlackHole 2ch.
3. Start talking. You can change the boost, pick a preset or adjust the equalizer while you go.

> If you set Orin's "Send to" to your speakers, you'll hear yourself. Wear headphones or you'll get feedback.

## Uninstall

Quit Orin from the menu bar, then drag it from Applications to the Bin.

## Privacy

Your voice stays on your Mac. Orin doesn't record it, save it or upload it, and there's no account, tracking, analytics or ads.

Orin only goes online to download BlackHole 2ch from its official website, and only if you don't already have it.

The details are in the [privacy policy](PRIVACY.md).

## License

Orin is free to use and free to share. You can pass on unmodified copies, including the official installer, but you can't modify, reverse-engineer, rebrand, sell or recreate Orin or any part of it. The full terms are in [LICENSE](LICENSE).

## Help and feedback

Got a question, an idea or a bug? Come say hi in the [Chill w/ Hrishi](https://discord.gg/QEykkuk6Gq) Discord server.

<br>

<p align="center">
  Developed by Hrishi<br>
  © 2026 Hrishi. All rights reserved.
</p>
