# Samsung-ATIV-Book-2-NT270E5R-KD5S

## System Specification
| Laptop | Samsung ATIV Book 2 NT270E5R-KD5S |
| - | - |
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
1. Atheros Wi-Fi는 High Sierra 이후로 지원되지 않습니다. High Sierra의 IO80211Family.kext와 AirportAtheros40.kext를 이용하여 Mojave와 이후 OS에서 AR9565를 이용할 수 있습니다. 하지만 여전히 문제점이 있습니다.
    - Wi-Fi가 매우 느립니다.
    - 온보드 카드이기 때문에 교체할 수 없습니다.
    - Continuity 기능을 사용할 수 없습니다.
2. NumPad가 제대로 작동하지 않습니다.
    - 그냥 누르면 각인된 아래 키가 작동합니다: Home, uparrow, PgUp, etc.
    - Fn+#를 입력하는 형식으로 숫자를 입력할 수 있습니다.
3. SD 카드 리더기가 작동하지 않습니다.
4. 잠자기에서 깨어나면 터치패드 제스쳐가 잘 작동하지 않습니다.

## Activate AR9565 Wi-Fi
1. [HS80211Family.kext](https://www.insanelymac.com/forum/files/file/1008-io80211family-modif/)와 같이 로딩되는 AR9565용 AirportAtheros40.kext를 부트로더에 추가합니다.

## Working
1. Issues에 없는 기능은 대부분 작동합니다.
2. HDMI 화면과 소리가 작동하고 VGA도 (macOS에서 DP로 인식됩니다.) 화면이 잘 나옵니다.

## Things to consider
1. SD 카드 리더기가 작동하지 않습니다. VMWare를 이용하여 사용하길 원하면 [이 가이드](https://github.com/ManuGithubSteam/XiaoMi-Pro-2018-HackintoshOC/wiki/2.0-Setup-SD-Card-Reader)를 참고하십시오.
2. Aptio Setup Utility P07RCK 기준으로 MSR 0xE2 register offset은 0x59입니다.

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and kexts

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions alive at tonymacx86

zxystd(original author) and lynxnu(fixed kernel panic) for Ath3kBT
