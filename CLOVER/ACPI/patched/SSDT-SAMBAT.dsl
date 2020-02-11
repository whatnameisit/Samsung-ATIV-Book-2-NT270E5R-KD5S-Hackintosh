// Battery patch for NT270E5R-KD5S
// Also includes much of _PTSWAK patch from RehabMan's repo: https://github.com/RehabMan/OS-X-Clover-Laptop-Config/blob/master/hotpatch/SSDT-PTSWAK.dsl
// created by whatnameisit
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "batt", 0x00000000)
{
#endif
    External (_PR_.CFGD, FieldUnitObj)    // (from opcode)
    External (_PR_.CPU0._PPC, IntObj)    // (from opcode)
    External (_SB_.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.BAT1.BIFP, IntObj)    // (from opcode)
    External (_SB_.BAT1.BIXP, IntObj)    // (from opcode)
    External (_SB_.BAT1.STAT, IntObj)    // (from opcode)
    External (_SB_.IAOE.IBT1, UnknownObj)    // (from opcode)
    External (_SB_.IAOE.ITMR, UnknownObj)    // (from opcode)
    External (_SB_.IAOE.PTSL, UnknownObj)    // (from opcode)
    External (_SB_.IAOE.WKRS, UnknownObj)    // (from opcode)
    External (_SB_.LID0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.B0D3.ABAR, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.B0D3.BARA, IntObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.CLID, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.STAT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.TCHE, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.HDAU.ABAR, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.HDAU.BARA, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ABT1, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ACEX, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.DCBE, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.LSTE, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TIST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TZCH, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.VRMF, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.NHPG, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.NPME, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGA.SSID, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.EPON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.NHDM, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.OPTF, IntObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.SSID, IntObj)    // (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGA.SSID, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGP.EPON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PEGP.NHDM, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGP.OPTF, IntObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGP.SSID, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.XWAK, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PWRB, DeviceObj)    // (from opcode)
    External (_SB_.TPM_.PTS_, MethodObj)    // 1 Arguments (from opcode)
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (ADBG, MethodObj)    // 1 Arguments (from opcode)
    External (BFCC, FieldUnitObj)    // (from opcode)
    External (BIFP, IntObj)    // (from opcode)
    External (CCRN, MethodObj)    // 0 Arguments (from opcode)
    External (COPC, FieldUnitObj)    // (from opcode)
    External (CPRN, MethodObj)    // 0 Arguments (from opcode)
    External (CPTY, FieldUnitObj)    // (from opcode)
    External (ECON, FieldUnitObj)    // (from opcode)
    External (GOST, MethodObj)    // 0 Arguments (from opcode)
    External (GSSB, MethodObj)    // 2 Arguments (from opcode)
    External (GSSM, MethodObj)    // 2 Arguments (from opcode)
    External (GSSW, MethodObj)    // 2 Arguments (from opcode)
    External (ICNF, FieldUnitObj)    // (from opcode)
    External (IGDS, FieldUnitObj)    // (from opcode)
    External (LIDS, FieldUnitObj)    // (from opcode)
    External (NEXP, FieldUnitObj)    // (from opcode)
    External (NVGF, FieldUnitObj)    // (from opcode)
    External (NVPL, FieldUnitObj)    // (from opcode)
    External (OSCC, FieldUnitObj)    // (from opcode)
    External (OSYS, FieldUnitObj)    // (from opcode)
    External (P80D, FieldUnitObj)    // (from opcode)
    External (P8XH, MethodObj)    // 2 Arguments (from opcode)
    External (PNOT, MethodObj)    // 0 Arguments (from opcode)
    External (PPCS, FieldUnitObj)    // (from opcode)
    External (PROD, FieldUnitObj)    // (from opcode)
    External (PTS_, MethodObj)    // 1 Arguments (from opcode)
    External (PWRS, FieldUnitObj)    // (from opcode)
    External (RELT, FieldUnitObj)    // (from opcode)
    External (RIST, FieldUnitObj)    // (from opcode)
    External (RMCF.SHUT, IntObj)    // (from opcode)
    External (RMCF.SSTF, IntObj)    // (from opcode)
    External (RMCF.XPEE, IntObj)    // (from opcode)
    External (RP1D, FieldUnitObj)    // (from opcode)
    External (RP3D, FieldUnitObj)    // (from opcode)
    External (RP4D, FieldUnitObj)    // (from opcode)
    External (RP5D, FieldUnitObj)    // (from opcode)
    External (SDCK, FieldUnitObj)    // (from opcode)
    External (STAT, IntObj)    // (from opcode)
    External (WAK_, MethodObj)    // 1 Arguments (from opcode)

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

    Scope (_SB.BAT1)
    {
        Method (SBIX, 0, Serialized)
        {
            If ((ECON == Zero))
            {
                Local0 = GSSW (0x82, 0xB0)
                If ((Local0 == 0xFFFF))
                {
                    BIFP [One] = 0xFFFFFFFF
                    BIXP [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [One] = Local0
                    BIXP [0x02] = Local0
                }

                Local0 = GSSW (0x82, 0xB2)
                If ((Local0 == 0xFFFF))
                {
                    BIFP [0x02] = 0xFFFFFFFF
                    BIXP [0x03] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [0x02] = Local0
                    BIXP [0x03] = Local0
                }

                Local0 = GSSW (0x82, 0xB4)
                If ((Local0 == 0xFFFF))
                {
                    BIFP [0x04] = 0xFFFFFFFF
                    BIXP [0x05] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [0x04] = Local0
                    BIXP [0x05] = Local0
                }

                Local0 = GSSW (0x82, 0xB6)
                If ((Local0 == 0xFFFF))
                {
                    BIFP [0x05] = Zero
                    BIXP [0x06] = Zero
                    BIFP [0x06] = Zero
                    BIXP [0x07] = Zero
                }
                Else
                {
                    BIFP [0x05] = Local0
                    BIXP [0x06] = Local0
                    BIFP [0x06] = Local0
                    BIXP [0x07] = Local0
                }

                If ((RELT == 0xBA))
                {
                    BIFP [0x05] = Zero
                    BIXP [0x06] = Zero
                    BIFP [0x06] = Zero
                    BIXP [0x07] = Zero
                }

                Local0 = GSSW (0x82, 0xD0)
                If ((Local0 == 0xFFFF))
                {
                    BIXP [0x08] = Zero
                }
                Else
                {
                    BIXP [0x08] = Local0
                }
            }
            Else
            {
                Local3 = B1B4 (^^PCI0.LPCB.H_EC.A1F0, ^^PCI0.LPCB.H_EC.A1F1, ^^PCI0.LPCB.H_EC.A1F2, ^^PCI0.LPCB.H_EC.A1F3)
                Local4 = B1B4 (^^PCI0.LPCB.H_EC.V1L0, ^^PCI0.LPCB.H_EC.V1L1, ^^PCI0.LPCB.H_EC.V1L2, ^^PCI0.LPCB.H_EC.V1L3)
                Local0 = Local3
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    BIFP [One] = 0xFFFFFFFF
                    BIXP [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [One] = Local0
                    BIXP [0x02] = Local0
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
                    BIFP [0x02] = 0xFFFFFFFF
                    BIXP [0x03] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [0x02] = Local0
                    BIXP [0x03] = Local0
                }

                Local0 = Local4
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    BIFP [0x04] = 0xFFFFFFFF
                    BIXP [0x05] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [0x04] = Local0
                    BIXP [0x05] = Local0
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
                    BIFP [0x05] = 0xFFFFFFFF
                    BIXP [0x06] = 0xFFFFFFFF
                    BIFP [0x06] = 0xFFFFFFFF
                    BIXP [0x07] = 0xFFFFFFFF
                }
                Else
                {
                    BIFP [0x05] = Local0
                    BIXP [0x06] = Local0
                    BIFP [0x06] = Local0
                    BIXP [0x07] = Local0
                }

                If ((RELT == 0xBA))
                {
                    BIFP [0x05] = Zero
                    BIXP [0x06] = Zero
                    BIFP [0x06] = Zero
                    BIXP [0x07] = Zero
                }

                Local0 = B1B2 (^^PCI0.LPCB.H_EC.YLC0, ^^PCI0.LPCB.H_EC.YLC1)
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    BIXP [0x08] = Zero
                }
                Else
                {
                    BIXP [0x08] = Local0
                }
            }

            Return (BIFP)
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

                STAT [Zero] = Local0
                Local0 = GSSW (0x82, 0xA4)
                If ((Local0 == 0xFFFF))
                {
                    STAT [One] = 0xFFFFFFFF
                }
                Else
                {
                    If ((Local0 >= 0x8000))
                    {
                        Local0 ^= 0xFFFF
                        Local0++
                    }

                    STAT [One] = Local0
                }

                Local0 = GSSW (0x82, 0xA2)
                If ((Local0 == 0xFFFF))
                {
                    STAT [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    STAT [0x02] = Local0
                }

                Local0 = GSSW (0x82, 0xA6)
                If ((Local0 == 0xFFFF))
                {
                    STAT [0x03] = 0xFFFFFFFF
                }
                Else
                {
                    STAT [0x03] = Local0
                }
            }
            Else
            {
                Local3 = B1B4 (^^PCI0.LPCB.H_EC.R1R0, ^^PCI0.LPCB.H_EC.R1R1, ^^PCI0.LPCB.H_EC.R1R2, ^^PCI0.LPCB.H_EC.R1R3)
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

                STAT [Zero] = Local0
                Local0 = Local3
                Local0 >>= 0x10
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    STAT [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    STAT [0x02] = Local0
                }

                Sleep (0x64)
                Local4 = B1B4 (^^PCI0.LPCB.H_EC.P1V0, ^^PCI0.LPCB.H_EC.P1V1, ^^PCI0.LPCB.H_EC.P1V2, ^^PCI0.LPCB.H_EC.P1V3)
                Local0 = Local4
                Local0 &= 0xFFFF
                Local1 = (Local0 << 0x08)
                Local1 &= 0xFF00
                Local0 >>= 0x08
                Local0 |= Local1
                If ((Local0 == 0xFFFF))
                {
                    STAT [One] = 0xFFFFFFFF
                }
                Else
                {
                    If ((Local0 >= 0x8000))
                    {
                        Local0 ^= 0xFFFF
                        Local0++
                    }

                    STAT [One] = Local0
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
                    STAT [0x03] = 0xFFFFFFFF
                }
                Else
                {
                    STAT [0x03] = Local0
                }
            }

            Return (STAT)
        }

        Method (_BTP, 1, Serialized)  // _BTP: Battery Trip Point
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
                ^^PCI0.LPCB.H_EC.TPC0 = Local0
                ^^PCI0.LPCB.H_EC.TPC1 = (Local0 >> 0x08)
            }
        }
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Local0 = Arg3
        Local0 = (Arg2 | (Local0 << 0x08))
        Local0 = (Arg1 | (Local0 << 0x08))
        Local0 = (Arg0 | (Local0 << 0x08))
        Return (Local0)
    }

    Method (YPTS, 1, NotSerialized)
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        PTS (Arg0)
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
            Local0 = B1B4 (\_SB.PCI0.LPCB.H_EC.A1F0, \_SB.PCI0.LPCB.H_EC.A1F1, \_SB.PCI0.LPCB.H_EC.A1F2, \_SB.PCI0.LPCB.H_EC.A1F3)
            Local0 >>= 0x10
            Local0 &= 0xFFFF
            BFCC = Local0
        }

        SDCK = \_SB.PCI0.LPCB.H_EC.DCBE
        If ((Arg0 == 0x04))
        {
            GSSM (0xF9, Zero)
        }

        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }
    }

    Method (YWAK, 1, NotSerialized)
    {
        P8XH (One, 0xAB)
        WAK (Arg0)
        ADBG ("_WAK")
        \_SB.PCI0.LPCB.H_EC.VRMF = One
        If (CondRefOf (\_SB.PCI0.PEG0.PEGP.OPTF))
        {
            If (\_SB.PCI0.PEG0.PEGP.OPTF)
            {
                \_SB.PCI0.PEG0.PEGP.NHDM = One
                \_SB.PCI0.PEG0.PEGA.SSID = \_SB.PCI0.PEG0.PEGP.SSID
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
                \_SB.PCI0.RP05.PEGA.SSID = \_SB.PCI0.RP05.PEGP.SSID
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
            \_SB.PCI0.B0D3.BARA = \_SB.PCI0.B0D3.ABAR
        }

        If ((ICNF & 0x10))
        {
            If ((\_SB.PCI0.GFX0.TCHE & 0x0100))
            {
                If ((\_SB.IAOE.ITMR == One))
                {
                    If (((\_SB.IAOE.IBT1 & One) && ((\_SB.IAOE.WKRS & 0x02) || (\_SB.IAOE.WKRS & 0x10))))
                    {
                        \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC) | One)
                    }
                    Else
                    {
                        \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC)
                    }
                }
                ElseIf ((ECON == One))
                {
                    If (((\_SB.PCI0.LPCB.H_EC.ABT1 & One) && ((\_SB.IAOE.WKRS & 0x02) || (\_SB.IAOE.WKRS & 0x10))))
                    {
                        \_SB.PCI0.GFX0.STAT = ((\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC) | One)
                    }
                    Else
                    {
                        \_SB.PCI0.GFX0.STAT = (\_SB.PCI0.GFX0.STAT & 0xFFFFFFFFFFFFFFFC)
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
                    PWRS = \_SB.PCI0.LPCB.H_EC.ACEX
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
                        PPCS = NVPL
                    }
                    Else
                    {
                        PPCS = RIST
                    }

                    \_PR.CPU0._PPC = PPCS
                    CPRN ()
                }
            }

            If ((RP1D == Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If ((RP3D == Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If ((RP4D == Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If ((RP5D == Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
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
                    Notify (\_SB.PWRB, 0x02)
                }
            }

            If ((Arg0 == 0x04))
            {
                Notify (\_SB.PWRB, 0x02)
            }

            If ((SDCK != \_SB.PCI0.LPCB.H_EC.DCBE))
            {
                SDCK = \_SB.PCI0.LPCB.H_EC.DCBE
            }

            If ((Arg0 == 0x04))
            {
                Local0 = One
            }
            Else
            {
                Local0 = \_SB.PCI0.LPCB.H_EC.LSTE
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

                Notify (\_SB.LID0, 0x80)
            }
        }

        Local0 = B1B4 (\_SB.PCI0.LPCB.H_EC.A1F0, \_SB.PCI0.LPCB.H_EC.A1F1, \_SB.PCI0.LPCB.H_EC.A1F2, \_SB.PCI0.LPCB.H_EC.A1F3)
        Local0 >>= 0x10
        Local0 &= 0xFFFF
        If ((Local0 != BFCC))
        {
            Notify (\_SB.BAT1, One)
            Notify (\_SB.BAT1, 0x81)
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

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If ((0x05 == Arg0))
        {
            If (CondRefOf (\RMCF.SHUT))
            {
                If ((\RMCF.SHUT & One))
                {
                    Return (Zero)
                }

                If ((\RMCF.SHUT & 0x02))
                {
                    OperationRegion (PMRS, SystemIO, 0x1830, One)
                    Field (PMRS, ByteAcc, NoLock, Preserve)
                    {
                            ,   4, 
                        SLPE,   1
                    }

                    SLPE = Zero
                    Sleep (0x10)
                }
            }
        }

        YPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (((Arg0 < One) || (Arg0 > 0x05)))
        {
            Arg0 = 0x03
        }

        Local0 = YWAK (Arg0)
        If (CondRefOf (\RMCF.SSTF))
        {
            If (\RMCF.SSTF)
            {
                If (((0x03 == Arg0) && CondRefOf (\_SI._SST)))
                {
                    \_SI._SST (One)
                }
            }
        }

        Return (Local0)
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
