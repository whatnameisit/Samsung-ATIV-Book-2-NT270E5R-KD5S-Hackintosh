# Samsung-ATIV-Book-2-NT270E5R-KD5S
macOS 10.14.3
## Issues
1. Too much noise picked up when Siri is active such that the A.I. sometimes thinks I'm still talking when I'm done. Need to reduce input level
2. Atheros WiFi/BT not suppored by Apple anymore
    - EMlyDinEsH is not working on BTFirmware anymore so Handoff and Air Drop are not working properly
    - WiFi is very slow as AR9565 was never supported OOB
    - Yes, the card is built-in
## Working
1. Things that are not listed in Issues
2. HDMI with sound and VGA (recognized as DP by macOS) work
## Things to consider
1. Menubar displays correct battery status even with original _PTS and _WAK dropped with SSDT-PTSWAK.aml. There are larger than 8-bit FieldUnitObjects in _PTS and _WAK which seem to be not active at all as the laptop does not not have any dGPU. Empty _PTS and _WAK methods may be tried.
## Acknowledgment
Apple for macOS

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions at tonymacx86