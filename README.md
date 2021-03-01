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
| UEFI BIOS | Aptio Setup Utility P07RCK |

## Issues
1. Apple dropped support for Atheros Wi-Fi since Mojave and AR9565 it not natively supported. You can activate Wi-Fi on Mojave and higher OS using IO80211Family.kext and patched AirportAtheros40.kext from High Sierra. Install [HS80211Family.kext](https://www.insanelymac.com/forum/files/file/1008-io80211family-modif/) and the corresponding AirportAtheros40.kext for AR9565 on the bootloader. However,
    - The Wi-Fi is very slow.
    - The card is soldered.
    - Continuity features do not work.
2. The SD card reader cannot read any cards. Refer to [this guide](https://github.com/ManuGithubSteam/XiaoMi-Pro-2018-HackintoshOC/wiki/2.0-Setup-SD-Card-Reader) to use it through VMWare.

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and kexts

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions alive at tonymacx86

zxystd(original author) and lynxnu(fixed kernel panic) for Ath3kBT
