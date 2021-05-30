# Samsung-ATIV-Book-2-NT270E5R-KD5S

## System Specification

| Item | Details |
| - | - |
| Model | Samsung ATIV Book 2 NT270E5R-KD5S |
| CPU | Intel Core i5-4200U |
| Graphics | Intel HD Graphics 4400 |
| RAM | Samsung SODIMM DDR3L 8GB *(Upgraded)* |
| Ethernet | Realtek Fast Ethernet RTL8136 |
| Wi-Fi / Bluetooth | Qualcomm Atheros AR9565 / AR3012 |
| Card Reader | Realtek USB Card Reader RTS5129 *(Limited support)* |
| Camera | Webcam SC-10HDD12636P |
| Audio | Realtek HD Audio ALC282 |
| Touchpad | Synaptics PS/2 touchpad |
| UEFI BIOS | Aptio Setup Utility P07RCK |

## Issues

The same issues can be found in my other repository.
1. [Wi-Fi](https://github.com/whatnameisit/Samsung-ATIV-One-5-DM500A2J-K26L-Hackintosh/issues/7)
2. [SD card](https://github.com/whatnameisit/Samsung-ATIV-One-5-DM500A2J-K26L-Hackintosh/issues/8)

## Steps to install

1. Read [Configuration.pdf](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf).
2. Read [Dortania guides](https://dortania.github.io/getting-started/).
3. Prepare USB drive with macOS installer mounted on it.
4. Download this repository and copy and paste the OC and BOOT folders to USB EFI partition.
5. Boot into USB and select macOS installer and install.
6. Mount EFI and copy USB EFI to the system EFI partition.
7. Replace the numbers in SMBIOS.

## Acknowledgment

Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

CaseySJ for starting the Intel framebuffer discussions at tonymacx86 which helped with VGA output

zxystd(original author) and lynxnu(fixed kernel panic) for Ath3kBT
