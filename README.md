# Samsung-ATIV-Book-2-NT270E5R-KD5S Hackintosh

## System Specification

| Item | Details |
| - | - |
| Model | Samsung ATIV Book 2 NT270E5R-KD5S |
| CPU | Intel Core i5-4200U |
| Graphics | Intel HD Graphics 4400 |
| RAM | Samsung 8GB 1600 MHz DDR3L SODIMM *(Upgraded)* |
| Ethernet | Realtek Fast Ethernet RTL8136 |
| Wi-Fi / Bluetooth | Qualcomm Atheros AR9565 / AR3012 |
| Card Reader | Realtek USB Card Reader RTS5129 |
| Camera | Webcam SC-10HDD12636P |
| Audio | Realtek ALC282 |
| Touchpad | Synaptics PS/2 touchpad |
| UEFI BIOS | Aptio Setup Utility P07RCK |

## Steps to install

1. Read [Configuration.pdf](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf).
2. Read [Dortania guides](https://dortania.github.io/getting-started/).
3. Prepare USB drive with macOS installer mounted on it.
4. Download this repository and copy and paste the OC and BOOT folders to USB EFI partition.
5. Boot into USB and select macOS installer and install.
6. Mount EFI and copy USB EFI to the system EFI partition.
7. Replace the numbers in SMBIOS.
- Note: An extra step is needed to achieve Wireless Internet. -- [Wireless Internet with Ath9565](#wireless-internet-with-ath9565)

## Wireless Internet with Ath9565

1. Go to https://www.insanelymac.com/forum/files/file/1008-io80211family-modif/.
2. Download HS80211Family.kext and AirportAtheros40-9565.kext.
3. Place HS80211Family.kext and the one extracted from AirportAtheros40-9565.kext inside /EFI/OC/Kexts folder

## Acknowledgment

Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

CaseySJ for starting the Intel framebuffer discussions at tonymacx86 which helped with VGA output

zxystd(original author) and lynxnu(fixed kernel panic) for Ath3kBT
