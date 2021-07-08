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
static const char *ng0 = "E:/cad_code/project_phase_1/PCcontrol.v";
static int ng1[] = {0, 0};



static void Always_32_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3144);
    *((int *)t2) = 1;
    t3 = (t0 + 2856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 1344U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(34, ng0);
    t19 = (t0 + 1504U);
    t20 = *((char **)t19);
    t19 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t19, t20, 0, 0, 32, 0LL);
    goto LAB11;

}


extern void work_m_00000000003316630858_0156549398_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000003316630858_0156549398", "isim/SCC_tb_isim_beh.exe.sim/work/m_00000000003316630858_0156549398.didat");
	xsi_register_executes(pe);
}
