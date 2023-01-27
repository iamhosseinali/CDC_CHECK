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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/Edu/FPGA/CDC/counter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4000226436_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3496);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3400);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4000226436_3212880686_p_1(char *t0)
{
    char t10[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3416);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 3560);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5212U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t10, t3, t1, 1);
    t6 = (t10 + 12U);
    t11 = *((unsigned int *)t6);
    t12 = (1U * t11);
    t2 = (8U != t12);
    if (t2 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 3624);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB5:    xsi_size_not_matching(8U, t12, 0);
    goto LAB6;

}


extern void work_a_4000226436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4000226436_3212880686_p_0,(void *)work_a_4000226436_3212880686_p_1};
	xsi_register_didat("work_a_4000226436_3212880686", "isim/tb_isim_beh.exe.sim/work/a_4000226436_3212880686.didat");
	xsi_register_executes(pe);
}
