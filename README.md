# Samsung-ATIV-Book-2-NT270E5R-KD5S

## System Specification
| Item | Details |
| - | - |
| Model | Samsung ATIV Book 2 NT270E5R-KD5S |
| CPU | Intel Core i5-4200U |
| Graphics | Intel HD Graphics 4400 |
| Ethernet | Realtek Fast Ethernet RTL8136 |
| Wi-Fi / Bluetooth | Qualcomm Atheros AR9565 / AR3012 |
| Card Reader | *Realtek USB Card Reader RTS5129 (limited support)* |
| Camera | Webcam SC-10HDD12636P |
| Audio | Realtek HD Audio ALC282 |
| Touchpad | Synaptics PS/2 touchpad |
| UEFI BIOS Version | Aptio Setup Utility P07RCK |

## Issues
1. Apple dropped support for Atheros Wi-Fi since Mojave and AR9565 it not natively supported. You can activate Wi-Fi on Mojave and higher OS using IO80211Family.kext and patched AirportAtheros40.kext from High Sierra.
    - The Wi-Fi is very slow.
    - The card is soldered.
    - Continuity features do not work.
2. The SD care reader cannot read any cards.
3. Touchpad gestures are not recognized well upon waking from sleep.

## Activate AR9565 Wi-Fi
1. Install [HS80211Family.kext](https://www.insanelymac.com/forum/files/file/1008-io80211family-modif/) and the corresponding AirportAtheros40.kext for AR9565 on the bootloader.

## Working
1. Things that are not listed in Issues
2. HDMI with sound and VGA (recognized as DP in macOS) work.

## Things to consider
1. The SD card reader cannot read any cards. Refer to [this guide](https://github.com/ManuGithubSteam/XiaoMi-Pro-2018-HackintoshOC/wiki/2.0-Setup-SD-Card-Reader) to use it through VMWare.
2. The MSR 0xE2 register offset is at 0x59 if your firmware version is Aptio Setup Utility P07RCK.
3. Numeric keypad with Acidanthera's VoodooPS2 does not function correctly. You can only input numbers with Fn+# and arrows, Home, etc keys with simple strokes. [chilledHamza](https://github.com/chilledHamza)'s [modified code](https://github.com/acidanthera/bugtracker/issues/303#issuecomment-744067195) fixes this issue. NumLock status is not preserved across reboots though.

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and kexts

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions alive at tonymacx86

zxystd(original author) and lynxnu(fixed kernel panic) for Ath3kBT
