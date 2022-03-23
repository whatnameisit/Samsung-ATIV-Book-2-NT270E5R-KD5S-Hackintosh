/*
 * Patches methods to support battery reading.
 * It also supports two other things:
 * 1. All OS: Sleep at custom battery level. Currently set to 15 percent. This should work on all OS; however, this laptop does not seem to update ACPI cache for Windows. See https://github.com/acidanthera/bugtracker/issues/1294.
 * 2. macOS: Replace invalid serial number to 1710 to kill battery replacement notification. This may be fixed in future VirtualSMC release: https://github.com/acidanthera/bugtracker/issues/1841.
 *
 * config.plist ACPI/Patch
 * Comment: Battery: M(SBIX) to XBIX
 * Count:   1
 * Find:    53 42 49 58 08
 * Replace: 58 42 49 58 08
 *
 * Comment: Battery and Sleep on low battery(15): M(_BST) to ZBST
 * Count:   1
 * Find:    5F 42 53 54
 * Replace: 58 42 53 54
 *
 * Comment: Battery: M(_BTP) to XBTP
 * Count:   1
 * Find:    5F 42 54 50
 * Replace: 58 42 54 50
 *
 * Comment: Battery: M(_PTS) to ZPTS
 * Count:   1
 * Find:    5F 50 54 53 01 70
 * Replace: 5A 50 54 53 01 70
 *
 * Comment: Battery and Lid wake: M(_WAK) to ZWAK
 * Count:   1
 * Find:    5F 57 41 4B 09 50 38
 * Replace: 5A 57 41 4B 09 50 38
 *
 * Comment: Battery - Replacement notification: M(_BIF) to ZBIF
 * Count:   1
 * Find:    5F 42 49 46
 * Replace: 5A 42 49 46
 *
 * Comment: Battery - Replacement notification: M(_BIX) to ZBIX
 * Count:   1
 * Find:    5F 42 49 58
 * Replace: 5A 42 49 58
 */
DefinitionBlock ("", "SSDT", 2, "what", "BATT", 0x00000000)
{
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_SB_.BAT1, DeviceObj)
    External (_SB_.BAT1.BIFP, PkgObj)
    External (_SB_.BAT1.BIXP, PkgObj)
    External (_SB_.BAT1.SLBV, IntObj)
    External (_SB_.BAT1.STAT, PkgObj)
    External (_SB_.BAT1.XBIX, MethodObj)    // 0 Arguments
    External (_SB_.BAT1.XBTP, MethodObj)    // 1 Arguments
    External (_SB_.IAOE.IBT1, UnknownObj)
    External (_SB_.IAOE.ITMR, UnknownObj)
    External (_SB_.IAOE.PTSL, UnknownObj)
    External (_SB_.IAOE.WKRS, UnknownObj)
    External (_SB_.LID0, DeviceObj)
    External (_SB_.PCI0.B0D3.ABAR, FieldUnitObj)
    External (_SB_.PCI0.B0D3.BARA, IntObj)
    External (_SB_.PCI0.GFX0.CLID, FieldUnitObj)
    External (_SB_.PCI0.GFX0.STAT, FieldUnitObj)
    External (_SB_.PCI0.GFX0.TCHE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ABT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ACEX, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.B1PV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.B1RR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.DCBE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.LSTE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.TIST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.TZCH, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.H_EC.VRMF, FieldUnitObj)
    External (_SB_.PCI0.NHPG, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.NPME, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGA.SSID, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.EPON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.NHDM, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.OPTF, IntObj)
    External (_SB_.PCI0.PEG0.PEGP.SSID, IntObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP05, UnknownObj)
    External (_SB_.PCI0.RP05.PEGA.SSID, FieldUnitObj)
    External (_SB_.PCI0.RP05.PEGP.EPON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.PEGP.NHDM, UnknownObj)
    External (_SB_.PCI0.RP05.PEGP.OPTF, IntObj)
    External (_SB_.PCI0.RP05.PEGP.SSID, FieldUnitObj)
    External (_SB_.PCI0.XHC_.XWAK, MethodObj)    // 0 Arguments
    External (_SB_.PWRB, DeviceObj)
    External (_SB_.SLPB, DeviceObj)
    External (_SB_.TPM_.PTS_, MethodObj)    // 1 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (BFCC, FieldUnitObj)
    External (BIFP, IntObj)
    External (BIXP, IntObj)
    External (CCRN, MethodObj)    // 0 Arguments
    External (COPC, FieldUnitObj)
    External (CPRN, MethodObj)    // 0 Arguments
    External (CPTY, FieldUnitObj)
    External (ECON, FieldUnitObj)
    External (GOST, MethodObj)    // 0 Arguments
    External (GSSB, MethodObj)    // 2 Arguments
    External (GSSM, MethodObj)    // 2 Arguments
    External (GSSW, MethodObj)    // 2 Arguments
    External (ICNF, FieldUnitObj)
    External (IGDS, FieldUnitObj)
    External (LIDS, FieldUnitObj)
    External (NEXP, FieldUnitObj)
    External (NVGF, FieldUnitObj)
    External (NVPL, FieldUnitObj)
    External (OSCC, FieldUnitObj)
    External (OSYS, FieldUnitObj)
    External (P80D, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PNOT, MethodObj)    // 0 Arguments
    External (PPCS, FieldUnitObj)
    External (PROD, FieldUnitObj)
    External (PTS_, MethodObj)    // 1 Arguments
    External (PWRS, FieldUnitObj)
    External (RELT, FieldUnitObj)
    External (RIST, FieldUnitObj)
    External (RP1D, FieldUnitObj)
    External (RP3D, FieldUnitObj)
    External (RP4D, FieldUnitObj)
    External (RP5D, FieldUnitObj)
    External (SDCK, FieldUnitObj)
    External (WAK_, MethodObj)    // 1 Arguments
    External (ZPTS, MethodObj)    // 1 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments

    If (_OSI ("Darwin"))
    {
        Method (R16B, 2, NotSerialized)
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }

        Method (W16B, 3, NotSerialized)
        {
            Arg0 = Arg2
            Arg1 = (Arg2 >> 0x08)
        }

        Method (R32B, 4, NotSerialized)
        {
            Local0 = Arg3
            Local0 = (Arg2 | (Local0 << 0x08))
            Local0 = (Arg1 | (Local0 << 0x08))
            Local0 = (Arg0 | (Local0 << 0x08))
            Return (Local0)
        }

        Scope (_SB.PCI0.LPCB.H_EC)
        {
            OperationRegion (XECR, EmbeddedControl, Zero, 0xFF)
            Field (XECR, ByteAcc, Lock, Preserve)
            {
                Offset (0x91), 
                TPC0,   8, 
                TPC1,   8, 
                Offset (0xA0), 
                R1R0,   8, 
                R1R1,   8, 
                R1R2,   8, 
                R1R3,   8, 
                P1V0,   8, 
                P1V1,   8, 
                P1V2,   8, 
                P1V3,   8, 
                Offset (0xB0), 
                A1F0,   8, 
                A1F1,   8, 
                A1F2,   8, 
                A1F3,   8, 
                V1L0,   8, 
                V1L1,   8, 
                V1L2,   8, 
                V1L3,   8, 
                Offset (0xD0), 
                YLC0,   8, 
                YLC1,   8
            }
        }
    }

    Scope (_SB.BAT1)
    {
        Method (SBIX, 0, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                If ((ECON == Zero))
                {
                    Local0 = GSSW (0x82, 0xB0)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [One] = 0xFFFFFFFF
                        BXXX [0x02] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [One] = Local0
                        BXXX [0x02] = Local0
                    }

                    Local0 = GSSW (0x82, 0xB2)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [0x02] = 0xFFFFFFFF
                        BXXX [0x03] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [0x02] = Local0
                        BXXX [0x03] = Local0
                    }

                    Local0 = GSSW (0x82, 0xB4)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [0x04] = 0xFFFFFFFF
                        BXXX [0x05] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [0x04] = Local0
                        BXXX [0x05] = Local0
                    }

                    Local0 = GSSW (0x82, 0xB6)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [0x05] = Zero
                        BXXX [0x06] = Zero
                        \_SB.BAT1.BFXX [0x06] = Zero
                        BXXX [0x07] = Zero
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [0x05] = Local0
                        BXXX [0x06] = Local0
                        \_SB.BAT1.BFXX [0x06] = Local0
                        BXXX [0x07] = Local0
                    }

                    If ((RELT == 0xBA))
                    {
                        \_SB.BAT1.BFXX [0x05] = Zero
                        BXXX [0x06] = Zero
                        \_SB.BAT1.BFXX [0x06] = Zero
                        BXXX [0x07] = Zero
                    }

                    Local0 = GSSW (0x82, 0xD0)
                    If ((Local0 == 0xFFFF))
                    {
                        BXXX [0x08] = Zero
                    }
                    Else
                    {
                        BXXX [0x08] = Local0
                    }
                }
                Else
                {
                    Local3 = R32B (^^PCI0.LPCB.H_EC.A1F0, ^^PCI0.LPCB.H_EC.A1F1, ^^PCI0.LPCB.H_EC.A1F2, ^^PCI0.LPCB.H_EC.A1F3)
                    Local4 = R32B (^^PCI0.LPCB.H_EC.V1L0, ^^PCI0.LPCB.H_EC.V1L1, ^^PCI0.LPCB.H_EC.V1L2, ^^PCI0.LPCB.H_EC.V1L3)
                    Local0 = Local3
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [One] = 0xFFFFFFFF
                        BXXX [0x02] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [One] = Local0
                        BXXX [0x02] = Local0
                    }

                    Local0 = Local3
                    Local0 >>= 0x10
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [0x02] = 0xFFFFFFFF
                        BXXX [0x03] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [0x02] = Local0
                        BXXX [0x03] = Local0
                    }

                    Local0 = Local4
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [0x04] = 0xFFFFFFFF
                        BXXX [0x05] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [0x04] = Local0
                        BXXX [0x05] = Local0
                    }

                    Local0 = Local4
                    Local0 >>= 0x10
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.BAT1.BFXX [0x05] = 0xFFFFFFFF
                        BXXX [0x06] = 0xFFFFFFFF
                        \_SB.BAT1.BFXX [0x06] = 0xFFFFFFFF
                        BXXX [0x07] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.BAT1.BFXX [0x05] = Local0
                        BXXX [0x06] = Local0
                        \_SB.BAT1.BFXX [0x06] = Local0
                        BXXX [0x07] = Local0
                    }

                    If ((RELT == 0xBA))
                    {
                        \_SB.BAT1.BFXX [0x05] = Zero
                        BXXX [0x06] = Zero
                        \_SB.BAT1.BFXX [0x06] = Zero
                        BXXX [0x07] = Zero
                    }

                    Local0 = R16B (^^PCI0.LPCB.H_EC.YLC0, ^^PCI0.LPCB.H_EC.YLC1)
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        BXXX [0x08] = Zero
                    }
                    Else
                    {
                        BXXX [0x08] = Local0
                    }
                }

                Return (\_SB.BAT1.BFXX)
            }
            Else
            {
                Return (\_SB.BAT1.XBIX ())
            }
        }

        Method (_BIF, 0, Serialized)  // _BIF: Battery Information
        {
            SBIX ()
            If (_OSI ("Darwin"))
            {
                Return (BFXX) /* \_SB_.BAT1.BFXX */
            }
            Else
            {
                Return (BIFP) /* External reference */
            }
        }

        Method (_BIX, 0, Serialized)  // _BIX: Battery Information Extended
        {
            SBIX ()
            If (_OSI ("Darwin"))
            {
                Return (BXXX) /* \_SB_.BAT1.BXXX */
            }
            Else
            {
                Return (BIXP) /* External reference */
            }
        }

        Method (_BST, 0, Serialized)  // _BST: Battery Status
        {
            If ((ECON == Zero))
            {
                Local0 = GSSB (0x81, 0x84)
                If (((Local0 != Zero) && (Local0 != 0x05)))
                {
                    If ((PWRS == One))
                    {
                        Local0 = 0x02
                    }
                    Else
                    {
                        Local0 = One
                    }
                }

                \_SB.BAT1.STAT [Zero] = Local0
                Local0 = GSSW (0x82, 0xA4)
                If ((Local0 == 0xFFFF))
                {
                    \_SB.BAT1.STAT [One] = 0xFFFFFFFF
                }
                Else
                {
                    If ((Local0 >= 0x8000))
                    {
                        Local0 ^= 0xFFFF
                        Local0++
                    }

                    \_SB.BAT1.STAT [One] = Local0
                }

                Local0 = GSSW (0x82, 0xA2)
                If ((Local0 == 0xFFFF))
                {
                    \_SB.BAT1.STAT [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    \_SB.BAT1.STAT [0x02] = Local0
                }

                Local0 = GSSW (0x82, 0xA6)
                If ((Local0 == 0xFFFF))
                {
                    \_SB.BAT1.STAT [0x03] = 0xFFFFFFFF
                }
                Else
                {
                    \_SB.BAT1.STAT [0x03] = Local0
                }
            }
            Else
            {
                If (_OSI ("Darwin"))
                {
                    Local3 = R32B (^^PCI0.LPCB.H_EC.R1R0, ^^PCI0.LPCB.H_EC.R1R1, ^^PCI0.LPCB.H_EC.R1R2, ^^PCI0.LPCB.H_EC.R1R3)
                }
                Else
                {
                    Local3 = ^^PCI0.LPCB.H_EC.B1RR /* External reference */
                }

                Local0 = Local3
                Local0 &= 0xFF
                If (((Local0 != Zero) && (Local0 != 0x05)))
                {
                    If ((PWRS == One))
                    {
                        Local0 = 0x02
                    }
                    Else
                    {
                        Local0 = One
                    }
                }

                \_SB.BAT1.STAT [Zero] = Local0
                Local0 = Local3
                Local0 >>= 0x10
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    \_SB.BAT1.STAT [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    \_SB.BAT1.STAT [0x02] = Local0
                }

                Sleep (0x64)
                If (_OSI ("Darwin"))
                {
                    Local4 = R32B (^^PCI0.LPCB.H_EC.P1V0, ^^PCI0.LPCB.H_EC.P1V1, ^^PCI0.LPCB.H_EC.P1V2, ^^PCI0.LPCB.H_EC.P1V3)
                }
                Else
                {
                    Local4 = ^^PCI0.LPCB.H_EC.B1PV /* External reference */
                }

                Local0 = Local4
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    \_SB.BAT1.STAT [One] = 0xFFFFFFFF
                }
                Else
                {
                    If ((Local0 >= 0x8000))
                    {
                        Local0 ^= 0xFFFF
                        Local0++
                    }

                    \_SB.BAT1.STAT [One] = Local0
                }

                Local0 = Local4
                Local0 >>= 0x10
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    \_SB.BAT1.STAT [0x03] = 0xFFFFFFFF
                }
                Else
                {
                    \_SB.BAT1.STAT [0x03] = Local0
                }
            }

            If (CondRefOf (\_SB.BAT1.SLBV))
            {
                If (\_SB.BAT1.SLBV = One)
                {
                    If ((DerefOf (\_SB.BAT1.STAT [Zero]) & One))
                    {
                        If (_OSI ("Darwin"))
                        {
                            Divide (DerefOf (\_SB.BAT1.BXXX [0x02]), 0x14, Local0, Local1)
                        }
                        Else
                        {
                            Divide (DerefOf (\_SB.BAT1.BIXP [0x02]), 0x14, Local0, Local1)
                        }

                        Local1 *= 0x03
                        If ((DerefOf (\_SB.BAT1.STAT [0x02]) < Local1))
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }
                    }
                }
            }

            Return (\_SB.BAT1.STAT) /* External reference */
        }

        Method (_BTP, 1, Serialized)  // _BTP: Battery Trip Point
        {
            If (_OSI ("Darwin"))
            {
                Local0 = Arg0
                If ((ECON == Zero))
                {
                    Local0 <<= 0x08
                    Local0 &= 0x00FFFF00
                    Local0 |= 0x91
                    GSSW (0x84, Local0)
                }
                Else
                {
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    W16B (^^PCI0.LPCB.H_EC.TPC0, ^^PCI0.LPCB.H_EC.TPC1, Local0)
                }
            }
            Else
            {
                \_SB.BAT1.XBTP (Arg0)
            }
        }

        Name (BFXX, Package (0x0D)
        {
            One, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            One, 
            0xFFFFFFFF, 
            0x03, 
            0x0A, 
            One, 
            One, 
            "SR Real Battery", 
            "1710", 
            "LION", 
            "SAMSUNG Electronics"
        })
        Name (BXXX, Package (0x14)
        {
            Zero, 
            One, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            One, 
            0xFFFFFFFF, 
            0x03, 
            0x0A, 
            Zero, 
            0x00017318, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0x88B8, 
            0x61A8, 
            One, 
            One, 
            "SR Real Battery", 
            "1710", 
            "LION", 
            "SAMSUNG Electronics"
        })
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (_OSI ("Darwin"))
        {
            P80D = Zero
            P8XH (Zero, Arg0)
            \PTS (Arg0)
            ADBG (Concatenate ("_PTS=", ToHexString (Arg0)))
            If ((ICNF & 0x10))
            {
                If (CondRefOf (\_SB.IAOE.PTSL))
                {
                    \_SB.IAOE.PTSL = Arg0
                }
            }

            If ((COPC == 0xBF))
            {
                PROD = One
            }

            NVGF = Zero
            If ((Arg0 != 0x05))
            {
                Local0 = R32B (\_SB.PCI0.LPCB.H_EC.A1F0, \_SB.PCI0.LPCB.H_EC.A1F1, \_SB.PCI0.LPCB.H_EC.A1F2, \_SB.PCI0.LPCB.H_EC.A1F3)
                Local0 >>= 0x10
                Local0 &= 0xFFFF
                BFCC = Local0
            }

            SDCK = \_SB.PCI0.LPCB.H_EC.DCBE /* External reference */
            If ((Arg0 == 0x04))
            {
                GSSM (0xF9, Zero)
            }

            If (CondRefOf (\_SB.TPM.PTS))
            {
                \_SB.TPM.PTS (Arg0)
            }
        }
        Else
        {
            ZPTS (Arg0)
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            If ((0x03 == Arg0))
            {
                Notify (\_SB.LID0, 0x80) // Status Change
            }

            P8XH (One, 0xAB)
            WAK (Arg0)
            ADBG ("_WAK")
            \_SB.PCI0.LPCB.H_EC.VRMF = One
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP.OPTF))
            {
                If (\_SB.PCI0.PEG0.PEGP.OPTF)
                {
                    \_SB.PCI0.PEG0.PEGP.NHDM = One
                    \_SB.PCI0.PEG0.PEGA.SSID = \_SB.PCI0.PEG0.PEGP.SSID /* External reference */
                }
                Else
                {
                    \_SB.PCI0.PEG0.PEGP.NHDM = Zero
                }
            }

            If (CondRefOf (\_SB.PCI0.RP05.PEGP.OPTF))
            {
                If (\_SB.PCI0.RP05.PEGP.OPTF)
                {
                    \_SB.PCI0.RP05.PEGP.NHDM = One
                    \_SB.PCI0.RP05.PEGA.SSID = \_SB.PCI0.RP05.PEGP.SSID /* External reference */
                }
                Else
                {
                    \_SB.PCI0.RP05.PEGP.NHDM = Zero
                }
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                If (CondRefOf (\_SB.PCI0.PEG0.PEGP.EPON))
                {
                    \_SB.PCI0.PEG0.PEGP.EPON ()
                }

                If (CondRefOf (\_SB.PCI0.RP05.PEGP.EPON))
                {
                    \_SB.PCI0.RP05.PEGP.EPON ()
                }
            }

            If ((((\_SB.PCI0.B0D3.ABAR & 0xFFFFC004) != 0xFFFFC004) && (\_SB.PCI0.B0D3.BARA == 0x80000000)))
            {
                \_SB.PCI0.B0D3.BARA = \_SB.PCI0.B0D3.ABAR /* External reference */
            }

            If ((ICNF & 0x10))
            {
                If ((\_SB.PCI0.GFX0.TCHE & 0x0100))
                {
                    If ((\_SB.IAOE.ITMR == One))
                    {
                        If (((\_SB.IAOE.IBT1 & One) && ((\_SB.IAOE.WKRS & 0x02) || (
                            \_SB.IAOE.WKRS & 0x10))))
                        {
                            \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC) | One)
                        }
                        Else
                        {
                            \_SB.PCI0.GFX0.STAT &= 0xFFFFFFFFFFFFFFFC
                        }
                    }
                    ElseIf ((ECON == One))
                    {
                        If (((\_SB.PCI0.LPCB.H_EC.ABT1 & One) && ((\_SB.IAOE.WKRS & 0x02) || (
                            \_SB.IAOE.WKRS & 0x10))))
                        {
                            \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC) | One)
                        }
                        Else
                        {
                            \_SB.PCI0.GFX0.STAT &= 0xFFFFFFFFFFFFFFFC
                        }
                    }
                }

                If (CondRefOf (\_SB.IAOE.PTSL))
                {
                    \_SB.IAOE.PTSL = Zero
                }
            }

            If (NEXP)
            {
                If ((OSCC & 0x02))
                {
                    \_SB.PCI0.NHPG ()
                }

                If ((OSCC & 0x04))
                {
                    \_SB.PCI0.NPME ()
                }
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                If ((OSYS == 0x07D2))
                {
                    If ((\_PR.CFGD & One))
                    {
                        If ((\_PR.CPU0._PPC > Zero))
                        {
                            \_PR.CPU0._PPC -= One
                            PNOT ()
                            \_PR.CPU0._PPC += One
                            PNOT ()
                        }
                        Else
                        {
                            \_PR.CPU0._PPC += One
                            PNOT ()
                            \_PR.CPU0._PPC -= One
                            PNOT ()
                        }
                    }
                }

                If ((ECON == One))
                {
                    PROD = Zero
                    If ((\_SB.PCI0.LPCB.H_EC.ACEX != PWRS))
                    {
                        PWRS = \_SB.PCI0.LPCB.H_EC.ACEX /* External reference */
                        CCRN ()
                    }

                    If ((\_SB.PCI0.LPCB.H_EC.TIST != Zero))
                    {
                        If ((((CPTY & 0x80) == 0x80) && (\_SB.PCI0.LPCB.H_EC.TIST == One)))
                        {
                            GSSM (0xAA, Zero)
                        }

                        RIST = \_SB.PCI0.LPCB.H_EC.TZCH ()
                        If ((NVPL > RIST))
                        {
                            PPCS = NVPL /* External reference */
                        }
                        Else
                        {
                            PPCS = RIST /* External reference */
                        }

                        \_PR.CPU0._PPC = PPCS /* External reference */
                        CPRN ()
                    }
                }

                If ((RP1D == Zero))
                {
                    Notify (\_SB.PCI0.RP01, Zero) // Bus Check
                }

                If ((RP3D == Zero))
                {
                    Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                }

                If ((RP4D == Zero))
                {
                    Notify (\_SB.PCI0.RP04, Zero) // Bus Check
                }

                If ((RP5D == Zero))
                {
                    Notify (\_SB.PCI0.RP05, Zero) // Bus Check
                }
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                \_SB.PCI0.XHC.XWAK ()
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                If ((Arg0 == 0x03))
                {
                    If ((RELT == 0xBA))
                    {
                        Notify (\_SB.PWRB, 0x02) // Device Wake
                    }
                }

                If ((Arg0 == 0x04))
                {
                    Notify (\_SB.PWRB, 0x02) // Device Wake
                }

                If ((SDCK != \_SB.PCI0.LPCB.H_EC.DCBE))
                {
                    SDCK = \_SB.PCI0.LPCB.H_EC.DCBE /* External reference */
                }

                If ((Arg0 == 0x04))
                {
                    Local0 = One
                }
                Else
                {
                    Local0 = \_SB.PCI0.LPCB.H_EC.LSTE /* External reference */
                }

                If ((Local0 != LIDS))
                {
                    LIDS = Local0
                    If (IGDS)
                    {
                        If ((LIDS == Zero))
                        {
                            \_SB.PCI0.GFX0.CLID = 0x80000000
                        }

                        If ((LIDS == One))
                        {
                            \_SB.PCI0.GFX0.CLID = 0x80000003
                        }
                    }

                    Notify (\_SB.LID0, 0x80) // Status Change
                }
            }

            Local0 = R32B (\_SB.PCI0.LPCB.H_EC.A1F0, \_SB.PCI0.LPCB.H_EC.A1F1, \_SB.PCI0.LPCB.H_EC.A1F2, \_SB.PCI0.LPCB.H_EC.A1F3)
            Local0 >>= 0x10
            Local0 &= 0xFFFF
            If ((Local0 != BFCC))
            {
                Notify (\_SB.BAT1, One) // Device Check
                Notify (\_SB.BAT1, 0x81) // Information Change
            }

            GSSM (0xF8, Zero)
            P8XH (Zero, 0xAC)
            If ((Arg0 == 0x04))
            {
                GOST ()
            }

            Return (Package (0x02)
            {
                Zero, 
                Zero
            })
        }
        Else
        {
            Return (\ZWAK (Arg0))
        }
    }
}

