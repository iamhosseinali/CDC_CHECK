/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_2592010699;
char *SIMPRIM_P_0947159679;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_1367372525;
char *IEEE_P_3620187407;
char *SIMPRIM_P_4208868169;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    simprim_a_2221352371_4188616970_0724264973_init();
    simprim_a_1861840547_1486755294_1261007413_init();
    simprim_a_2295199258_3300903326_2689796838_init();
    simprim_a_2295199258_3300903326_3346948913_init();
    simprim_a_2295199258_3300903326_2710659281_init();
    simprim_a_0915285367_2431929443_0433961640_init();
    simprim_a_0915285367_2431929443_1331617822_init();
    simprim_a_0915285367_2431929443_1126735440_init();
    simprim_a_4130118134_1564065396_2142684670_init();
    simprim_a_4130118134_1564065396_2121576393_init();
    simprim_a_4130118134_1564065396_2067511628_init();
    simprim_a_0337481411_1235907005_2142684670_init();
    simprim_a_3156740924_4150518722_1141024547_init();
    simprim_a_3156740924_4150518722_1199993677_init();
    simprim_a_3156740924_4150518722_1170263316_init();
    simprim_a_3156740924_4150518722_4193375939_init();
    simprim_a_3156740924_4150518722_4201972397_init();
    simprim_a_3156740924_4150518722_4164140276_init();
    simprim_a_3156740924_4150518722_4252805745_init();
    simprim_a_3156740924_4150518722_1318881833_init();
    simprim_a_0985740735_2000130859_2121576393_init();
    simprim_a_0173550287_2000130859_2121576393_init();
    simprim_a_2507824909_2000130859_2067511628_init();
    simprim_a_0985740735_2000130859_2067511628_init();
    simprim_a_0635194858_1970351474_2121576393_init();
    simprim_a_1237896311_1970351474_2121576393_init();
    simprim_a_0635194858_1970351474_2067511628_init();
    simprim_a_3395610110_2220797900_2121576393_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_2866304254_1478103974_2121576393_init();
    simprim_a_2866304254_1478103974_2067511628_init();
    simprim_a_3912256443_3689431007_init();
    simprim_a_2007742134_2082680706_init();
    simprim_a_1842505884_2082680706_init();
    simprim_a_3531501133_3419647467_init();
    simprim_a_1094336774_0381654293_1126735440_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_1335952598_0632001823_init();
    work_a_3671711236_2372691052_init();


    xsi_register_tops("work_a_3671711236_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");

    return xsi_run_simulation(argc, argv);

}
