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
static const char *ng0 = "E:/cad_code/project_phase_1/PCmemory.v";
static const char *ng1 = "InstructionMemory.mem";
static int ng2[] = {4, 0};



static void Initial_33_0(char *t0)
{
    char *t1;

LAB0:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2016);
    xsi_vlogfile_readmemh(ng1, 0, t1, 0, 0, 0, 0);

LAB1:    return;
}

static void Cont_36_1(char *t0)
{
    char t5[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 3184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2016);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2016);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1456U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_divide(t14, 32, t13, 32, t12, 32);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t14, 32, 2);
    t15 = (t0 + 3584);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t20 = (t0 + 3504);
    *((int *)t20) = 1;

LAB1:    return;
}


extern void work_m_00000000000098668749_2827948545_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Cont_36_1};
	xsi_register_didat("work_m_00000000000098668749_2827948545", "isim/SCC_tb_isim_beh.exe.sim/work/m_00000000000098668749_2827948545.didat");
	xsi_register_executes(pe);
}
