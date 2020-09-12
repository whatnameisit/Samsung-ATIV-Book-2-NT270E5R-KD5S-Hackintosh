# Samsung-ATIV-Book-2-NT270E5R-KD5S
macOS 10.14.3

## Issues
1. Too much noise picked up when Siri is active such that the A.I. sometimes thinks I'm still talking when I'm done. Need to reduce input level as low as possible. With the recent enough AppleALC.kext reducing the input level to about 10 % works OK.
2. Apple doesn't support Atheros WiFi/BT anymore and AR9565 it not natively supported.
    - EMlyDinEsH is not working on BTFirmware anymore so Handoff and Air Drop are not working properly.
    - WiFi is very slow.
    - The card is soldered.

## Activate AR9565's WiFi
1. Copy AirPortAtheros40.kext to /Library/Extensions.
2. Run `sudo chown -R 0:0 /L*/E* && sudo chmod -R 755 /L*/E* && sudo kextcache -i /` in terminal.
- Note:  If you want to inject the kext via the bootloader, IO80211Family.kext needs to be injected as well. However, there may be a kernel panic on macOS updates, and OpenCore's injection of IO80211Family.kext is limited.

## Working
1. Things that are not listed in Issues
2. HDMI with sound and VGA (recognized as DP by macOS) work.

## Things to consider
1. fn key mapping,
2. The SD card reader cannot read any cards. This port (and also the bluetooth controller) is excluded from USB ports injection.

## Acknowledgment
Apple for macOS

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions alive at tonymacx86
