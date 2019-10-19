// created by whatnameisit
DefinitionBlock ("", "SSDT", 2, "hack", "_MATH", 0x00000000)
{
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
}

