/*
 * This SSDT remaps ADB and PS2 and defines Breakless keys.
 * It also allows PS2 touchpad buttons by using the Thinkpad profile.
 * See https://github.com/acidanthera/VoodooPS2/tree/6e2666a56f81522d8772e5f5238ec7f7b47f5924/Docs/ACPI for more information.
 */
DefinitionBlock ("", "SSDT", 2, "what", "PS2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (INFO, Package (0x0A)
        {
            "e04e=69: Fn+F1 to F13", 
            "e009=6b: Fn+F2 to F14", 
            "e008=71: Fn+F3 to F15", 
            "e002=6a: Fn+F4 to F16", 
            "e079, e077: Fn+F5", 
            "e033=40: Fn+F11 to F17", 
            "e055=4f: Fn+F12 to F18", 
            "e028=0 0=80, e029=80, Fn Lock", 
            "e037: Prt Sc", 
            "e038=6a: PS2 right cmd to F19"
        })
        Name (RMCF, Package (0x04)
        {
            "Keyboard", 
            Package (0x0C)
            {
                "Breakless PS2", 
                Package (0x0B)
                {
                    Package (0x00){}, 
                    "e04e", 
                    "e008", 
                    "e009", 
                    "e002", 
                    "e079", 
                    "e077", 
                    "e033", 
                    "e055", 
                    "e028", 
                    "e029"
                }, 

                "Custom ADB Map", 
                Package (0x07)
                {
                    Package (0x00){}, 
                    "e04e=69", 
                    "e009=6b", 
                    "e008=71", 
                    "e002=6a", 
                    "e033=40", 
                    "e055=4f"
                }, 

                "Custom PS2 Map", 
                Package (0x01)
                {
                    "e038=6a"
                }, 

                "NumLockSupport", 
                ">y", 
                "NumLockOnAtBoot", 
                ">y", 
                "Swap command and option", 
                ">y"
            }, 

            "Synaptics TouchPad", 
            Package (0x04)
            {
                "QuietTimeAfterTyping", 
                0x07735940, 
                "Thinkpad", 
                ">y"
            }
        })
    }
}

