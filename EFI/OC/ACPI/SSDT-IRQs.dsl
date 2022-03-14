/*
 * This SSDT corrects conflicting IRQs across multiple ACPI devices in macOS.
 * RTC and TIMR: Turns off original RTC and TIMR and defined them as RTC0 and TIM0.
 * HPET: Renamed M(HPET._CRS_ to XCRS to and defined new _CRS to return a BuffObj with IRQs that macOS expects. macOS seems to have a check for the name HPET as the OS crashes without the name HPET defined in ACPI.
 *
 * config.plist ACPI/Patch
 * Comment: IRQ: Rename M(HPET._CRS) to XCRS
 * Count:   1
 * Find:    5F 43 52 53 08 A0
 * Replace: 58 43 52 53 08 A0
 */
DefinitionBlock ("", "SSDT", 2, "what", "IRQs", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)
    External (_SB_.PCI0.LPCB.HPET.BUF0, BuffObj)
    External (_SB_.PCI0.LPCB.HPET.XCRS, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.LPCB)
    {
        Method (RTC._STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }

            Return (0x0F)
        }

        Method (TIMR._STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }

            Return (0x0F)
        }

        Scope (HPET)
        {
            Name (BUF1, ResourceTemplate ()
            {
                IRQNoFlags ()
                    {0,8}
                Memory32Fixed (ReadWrite,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (_OSI ("Darwin"))
                {
                    Return (BUF1) /* \_SB_.PCI0.LPCB.HPET.BUF1 */
                }

                Return (\_SB.PCI0.LPCB.HPET.XCRS ())
            }
        }

        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (TIM0)
        {
            Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0040,             // Range Minimum
                    0x0040,             // Range Maximum
                    0x01,               // Alignment
                    0x04,               // Length
                    )
                IO (Decode16,
                    0x0050,             // Range Minimum
                    0x0050,             // Range Maximum
                    0x10,               // Alignment
                    0x04,               // Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}

