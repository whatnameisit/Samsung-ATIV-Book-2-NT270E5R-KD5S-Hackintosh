# Samsung-ATIV-Book-2-NT270E5R-KD5S

## Issues
1. Apple dropped support for Atheros Wi-Fi/BT since Mojave and AR9565 it not natively supported. You can activate Wi-Fi on Mojave and higher OS using IO80211Family.kext and patched AirportAtheros40.kext from High Sierra.
    - The Wi-Fi is very slow.
    - The card is soldered.
    - Continuity features do not work.
2. NumPad is not working.
    - A simple stroke will invoke lower printed keys: Home, uparrow, PgUp, etc.
    - Numbers can be typed with the combination of Fn+#.
3. The SD care reader cannot read any cards.

## Activate AR9565's WiFi
1. Install [HS80211Family.kext](https://www.insanelymac.com/forum/files/file/1008-io80211family-modif/) and the corresponding AirportAtheros40.kext for AR9565 on the bootloader.

## Working
1. Things that are not listed in Issues
2. HDMI with sound and VGA (recognized as DP by macOS) work.

## Things to consider
1. The SD card reader cannot read any cards. Refer to [this guide](https://github.com/ManuGithubSteam/XiaoMi-Pro-2018-HackintoshOC/wiki/2.0-Setup-SD-Card-Reader) to use it through VMWare.
2. The MSR 0xE2 register offset is at 0x59 if your firmware version is Aptio Setup Utility P07RCK.

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and kexts

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions alive at tonymacx86

zxystd(original author) and lynxnu(fixed kernel panic) for Ath3kBT
