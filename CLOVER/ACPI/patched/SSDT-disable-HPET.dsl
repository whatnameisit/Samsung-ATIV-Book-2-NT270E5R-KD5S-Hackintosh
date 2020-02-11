// Turn off HPET device to imitate MBA6,2.
// Not necessary with this laptop
// created by whatnameisit
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_HPET", 0x00000000)
{
#endif
    External (HPAE, FieldUnitObj)    // (from opcode)

    Method (_SB.PCI0.LPCB.HPET._INI, 0, NotSerialized)  // _INI: Initialize
    {
        If (_OSI ("Darwin"))
        {
            Store (Zero, HPAE)
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif

