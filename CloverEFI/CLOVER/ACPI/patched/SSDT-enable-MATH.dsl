// enable MATH device on NT270E5R-KD5S
// created by whatnameisit
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_MATH", 0x00000000)
{
#endif
    External (_SB_.PCI0.LPCB.MATH.XSTA, MethodObj)    // 0 Arguments (from opcode)

    Method (_SB.PCI0.LPCB.MATH._STA, 0, NotSerialized)  // _STA: Status
    {
        If (_OSI ("Darwin"))
        {
            Return (0x0F)
        }
        Else
        {
            Return (\_SB.PCI0.LPCB.MATH.XSTA ())
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif

