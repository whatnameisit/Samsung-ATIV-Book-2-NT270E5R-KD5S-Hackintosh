// created by whatnameisit
DefinitionBlock ("", "SSDT", 2, "hack", "_HPET", 0x00000000)
{
    External (HPAE, FieldUnitObj)    // (from opcode)

    Method (_SB.PCI0.LPCB.HPET._INI, 0, NotSerialized)  // _INI: Initialize
    {
        If (_OSI ("Darwin"))
        {
            Store (Zero, HPAE)
        }
    }
}

