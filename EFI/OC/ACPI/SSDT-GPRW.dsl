/*
 * This SSDT fixes immediate wake from sleep.
 *
 * config.plist ACPI/Patch
 * Comment: Sleep: M(GPRW) to XPRW
 * Count:   1
 * Find:    47 50 52 57 02 70 68
 * Replace: 58 50 52 57 02 70 68
 */
DefinitionBlock ("", "SSDT", 2, "what", "GPRW", 0x00000000)
{
    External (XPRW, MethodObj)    // 2 Arguments

    Method (GPRW, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x6D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            If ((0x0D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }
        }

        Return (XPRW (Arg0, Arg1))
    }
}

