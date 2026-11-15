# Orin privacy policy

_Last updated: 16 November 2026 (version 1.2)_

Orin is a microphone booster for macOS, developed by Hrishi. It works entirely on your Mac and doesn't collect anything about you.

## What Orin uses

| What | Why | Where it goes |
|---|---|---|
| Microphone | To boost, clean up and change your voice as you talk | It's processed in memory and sent to the audio device you pick, and to your own headphones if you turn on Hear Me. It's never recorded, saved or sent anywhere else. |
| List of audio devices | So you can choose your mic and where to send it | Stays on your Mac |
| Your settings and presets | So Orin remembers your boost, equalizer, saved presets, appearance and accent colour | Saved in your Mac's app preferences |

## What Orin doesn't do

Orin has no accounts and doesn't ask for any personal information. It has no analytics, crash reporting, tracking or ads. It never records or uploads your voice, and since it collects no data, there's nothing to sell or share.

## When Orin goes online

Only when it has to:

- When you open Settings or click Check for updates, Orin asks GitHub for the latest version number. If you click Update, it downloads the new version from GitHub, checks the file hasn't been tampered with, and installs it.
- If the free BlackHole 2ch audio driver isn't installed, Orin downloads it from the official site (`existential.audio`), checks the file hasn't been tampered with, and installs it.

Nothing about you is sent in either case. GitHub sees an ordinary web request, like it would from a browser.

If you install with the Terminal command, that script also downloads Orin itself from GitHub.

## Permissions

macOS asks you to allow microphone access. Installing the audio driver asks for your password, which goes straight to macOS; Orin never sees or stores it. You can turn microphone access off at any time in System Settings › Privacy & Security › Microphone.

## Removing your data

Delete Orin from Applications. To remove your saved settings as well, run:

```bash
defaults delete local.orin.app
```

## Contact

If you have a question about privacy, ask in the [Chill w/ Hrishi](https://discord.gg/QEykkuk6Gq) Discord server.
