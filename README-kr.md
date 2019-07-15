# Samsung-ATIV-Book-2-NT270E5R-KD5S
macOS 10.14.3
## Issues
1. 시리를 활성화시키면 마이크가 너무 예민해져서 가만히 놔두어도 소리를 듣는 것처럼 작동합니다. 마이크 레벨을 0에 최대한 가깝게 설정해야 합니다. 0이 되면 마이크 작동하지 않습니다.
2. Atheros WiFi/BT는 모하비에서 더이상 지원되지 않습니다. 또한 AR9565 모델은 활성화시키는 3rd-party 켁스트를 넣지 않으면 작동하지 않습니다.
    - BT를 사용할 수 있게 해주는 켁스트의 원작자인 EMlyDinEsH는 더이상 아무것도 안하는 듯 합니다. 모하비 기준으로 Handoff and Air Drop이 제대로 작동하지 않습니다.
    - WiFi가 매우 느립니다.
    - 온보드 카드이기 때문에 교체할 수 없습니다.
## Working
1. Issues에 없는 기능은 대부분 작동합니다.
2. HDMI 화면과 소리가 작동하고 VGA도 (macOS에서 DP로 인식됩니다.) 화면이 잘 나옵니다.
## Things to consider
1. 기존 ACPI 테이블의 _PTS와 _WAK method를 SSDT-PTSWAK.aml를 이용해서 내용을 상당히 지워도 배터리 표기가 정상 작동합니다. _PTS와 _WAK 안에 8-bit보다 큰 FieldUnitObject가 있지만, 두 method는 외장그래픽이 없기 때문에 사용되지 않습니다. 따라서 _PTS와 _WAK method에서 아무것도 하지 않도록 설정해도 macOS가 제대로 작동하는지 테스트해볼 필요는 있습니다.
2. 클로버와 켁스트를 최신 버전으로 업데이트 했습니다. 테스트해보진 않았지만, 동일한 드라이버와 켁스트를 사용하기 때문에 문제는 없을 것입니다.
## Acknowledgment
Apple for macOS

RehabMan for his laptop guides

CaseySJ for starting and keeping the framebuffer discussions alive at tonymacx86
