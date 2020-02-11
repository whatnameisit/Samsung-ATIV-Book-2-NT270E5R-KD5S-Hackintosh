// Fake EC device for macOS
// Required for AppleBusPowerController to load prior to Catalina.
// Required for macOS to initialize starting with Catalina.
// Recent OSes require it regardless of its usage.
// created by Acidanthera
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "APPLE ", "SsdtEC", 0x00001000)
{
#endif
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
