// Configuration data for RehabMan's USBInjectAll.kext
// USB ports: https://www.tonymacx86.com/threads/guide-creating-a-custom-ssdt-for-usbinjectall-kext.211311/
// Port 3 is the bluetooth from AR9565, which does not work from cold boot. It may work with the old firmware in High Sierra and lower.
// Port 4 is the SD card reader which does not work in macOS.
// created for NT270E5R-KD5S by whatnameisit
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0x00000000)
{
#endif
    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Name (RMCF, Package (0x04)
        {
            "HUB1", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x08)
                {
                    "RIG1", // Right 1
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "RIG2", // Right 2
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x06, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "WEBC", // Webcam
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x05, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "LEF1", // Left 1
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }, 

            "EH01", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x02)
                {
                    "HUB1", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif

