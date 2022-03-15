/*
 * This SSDT controls SOLB. See SSDT-Battery.dsl.
 */
DefinitionBlock ("", "SSDT", 2, "what", "SOLBCtrl", 0x00000000)
{
    External (_SB_.BAT1, DeviceObj)

    Scope (_SB)
    {
        // SOLB variable set
        Name (BAT1.SLBV, One)
        // This device is needed to notify sleep.
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    If (\_SB.BAT1.SLBV = One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }
        }
    }
}

