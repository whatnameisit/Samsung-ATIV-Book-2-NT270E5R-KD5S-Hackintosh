// Merge individual SSDTs into one master SSDT.
// Download iasl and run the below command in terminal without the comment out sign "//" in the /patched directory
// IASL -vw 2095 -vw 2146 -vw 2089 -vw 4089 -vi -vr -p SSDT-NT270E5R-KD5S.aml SSDT-NT270E5R-KD5S.dsl
DefinitionBlock ("", "SSDT", 2, "hack", "NT270E5R", 0)
{
    #define NO_DEFINITIONBLOCK

    #include "SSDT-SAMBAT.dsl"
    #include "SSDT-ALS0.dsl"
    #include "SSDT-disable-HPET.dsl"
    #include "SSDT-EC.dsl"
    #include "SSDT-enable-MATH.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-LDRC.dsl"
    #include "SSDT-MCHC.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-SBUS.dsl"
    #include "SSDT-SLPB.dsl"
    #include "SSDT-UIAC.dsl"

}