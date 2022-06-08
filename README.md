# Samsung-ATIV-Book-2-NT270E5R-KD5S Hackintosh

## System Specification

| Item | Details | Note |
| - | - | - |
| Model | Samsung ATIV Book 2 NT270E5R-KD5S | |
| CPU | Intel Core i5-4200U | |
| Graphics | Intel HD Graphics 4400 | |
| RAM | Samsung 8GB 1600 MHz DDR3L SODIMM | Upgraded |
| Ethernet | Realtek Fast Ethernet RTL8136 | |
| Wi-Fi / Bluetooth | Qualcomm Atheros AR9565 / AR3012 | Not working in macOS Monterey. Use USB dongles instead. |
| Card Reader | Realtek USB Card Reader RTS5129 | |
| Camera | Webcam SC-10HDD12636P | |
| Audio | Realtek ALC282 | |
| Touchpad | Synaptics PS/2 touchpad | |
| UEFI BIOS | Aptio Setup Utility P07RCK | |

## Not working
- Apple Airport features: Soldered Wi-Fi / Bluetooth cannot be replaced.
- DRM contents on Safari: This is limited by non-native IGPU firmware not having Apple keys.
- Hibernation: It seems even with the right settings hibernation image is stored, but the machine does not turn off. Resume works after manually powering down the machine.

## Steps to install

1. Read [Configuration.pdf](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf).
2. Read [Dortania guides](https://dortania.github.io/getting-started/).

## Wi-Fi / Bluetooth with AR9565 / AR3012 - Big Sur and below only

See https://www.insanelymac.com/forum/files/file/1008-io80211family-modif/.
See https://github.com/lynxnu/AthBluetoothFirmware.

## Wi-Fi / Bluetooth with USB Wi-Fi / Bluetooth dongle - Monterey

See [Wireless-USB-OC-Big-Sur-Adapter](https://github.com/chris1111/Wireless-USB-OC-Big-Sur-Adapter) for compatible Wi-Fi dongle and installation.
See [BrcmPatchRAM](https://github.com/acidanthera/BrcmPatchRAM) for compatible Bluetooth dongle and installation.

## Acknowledgment

Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides
