// Overriding _PTS and _WAK

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_PTSWAK", 0)
{
#endif
    External(ZPTS, MethodObj)
    External(ZWAK, MethodObj)

    External(_SB.PCI0.PEG0.PEGP._ON, MethodObj)
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._ON, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._OFF, MethodObj)

    External(RMCF.DPTS, IntObj)
    External(RMCF.SHUT, IntObj)
    External(RMCF.XPEE, IntObj)
    External(RMCF.SSTF, IntObj)
    External(_SB.PCI0.XHC.PMEE, FieldUnitObj)
    External(_SI._SST, MethodObj)

    // In DSDT, native _PTS and _WAK are renamed ZPTS/ZWAK
    // As a result, calls to these methods land here.
    // Do nothing as there is no dGPU.
    Method(_PTS, 1)
    {
        
    }
    Method(_WAK, 1)
    {
        
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
