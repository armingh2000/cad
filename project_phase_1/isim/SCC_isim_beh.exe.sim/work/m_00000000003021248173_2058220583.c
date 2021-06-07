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
static const char *ng0 = "E:/cad_code/project_phase_1/Control.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {192U, 0U};
static unsigned int ng3[] = {32U, 0U};
static unsigned int ng4[] = {34U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {36U, 0U};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {37U, 0U};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {38U, 0U};
static unsigned int ng11[] = {4U, 0U};
static unsigned int ng12[] = {5U, 0U};
static unsigned int ng13[] = {6U, 0U};
static unsigned int ng14[] = {8U, 0U};
static unsigned int ng15[] = {35U, 0U};
static unsigned int ng16[] = {165U, 0U};
static unsigned int ng17[] = {43U, 0U};
static unsigned int ng18[] = {40U, 0U};
static unsigned int ng19[] = {16U, 0U};
static unsigned int ng20[] = {18U, 0U};
static unsigned int ng21[] = {160U, 0U};
static unsigned int ng22[] = {12U, 0U};
static unsigned int ng23[] = {13U, 0U};
static unsigned int ng24[] = {14U, 0U};
static unsigned int ng25[] = {15U, 0U};
static unsigned int ng26[] = {4095U, 4095U};



static void Always_37_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4856);
    *((int *)t2) = 1;
    t3 = (t0 + 4320);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng26)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 8, 0LL);

LAB29:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 56U);
    t7 = *((char **)t4);
    t8 = (t0 + 2728);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    t9 = (t0 + 3368);
    xsi_vlogvar_assign_value(t9, t7, 1, 0, 1);
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t7, 2, 0, 1);
    t11 = (t0 + 2088);
    xsi_vlogvar_assign_value(t11, t7, 3, 0, 1);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t7, 4, 0, 1);
    t13 = (t0 + 2248);
    xsi_vlogvar_assign_value(t13, t7, 5, 0, 1);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t7, 6, 0, 1);
    t15 = (t0 + 2568);
    xsi_vlogvar_assign_value(t15, t7, 7, 0, 1);
    goto LAB2;

LAB7:    xsi_set_current_line(40, ng0);

LAB30:    xsi_set_current_line(41, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 8, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);

LAB31:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB46;

LAB47:
LAB48:    goto LAB29;

LAB9:    xsi_set_current_line(57, ng0);

LAB49:    xsi_set_current_line(58, ng0);
    t4 = ((char*)((ng16)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB11:    xsi_set_current_line(62, ng0);

LAB50:    xsi_set_current_line(63, ng0);
    t4 = ((char*)((ng18)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB13:    xsi_set_current_line(67, ng0);

LAB51:    xsi_set_current_line(68, ng0);
    t4 = ((char*)((ng19)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB15:    xsi_set_current_line(72, ng0);

LAB52:    xsi_set_current_line(73, ng0);
    t4 = ((char*)((ng20)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB17:    xsi_set_current_line(77, ng0);

LAB53:    xsi_set_current_line(78, ng0);
    t4 = ((char*)((ng21)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB19:    xsi_set_current_line(82, ng0);

LAB54:    xsi_set_current_line(83, ng0);
    t4 = ((char*)((ng21)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB21:    xsi_set_current_line(87, ng0);

LAB55:    xsi_set_current_line(88, ng0);
    t4 = ((char*)((ng21)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB23:    xsi_set_current_line(92, ng0);

LAB56:    xsi_set_current_line(93, ng0);
    t4 = ((char*)((ng21)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng11)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB25:    xsi_set_current_line(97, ng0);

LAB57:    xsi_set_current_line(98, ng0);
    t4 = ((char*)((ng21)));
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng14)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB29;

LAB32:    xsi_set_current_line(44, ng0);
    t4 = ((char*)((ng1)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB34:    xsi_set_current_line(45, ng0);
    t4 = ((char*)((ng5)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB36:    xsi_set_current_line(46, ng0);
    t4 = ((char*)((ng7)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB38:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng9)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB40:    xsi_set_current_line(48, ng0);
    t4 = ((char*)((ng11)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB42:    xsi_set_current_line(49, ng0);
    t4 = ((char*)((ng12)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB44:    xsi_set_current_line(50, ng0);
    t4 = ((char*)((ng13)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

LAB46:    xsi_set_current_line(51, ng0);
    t4 = ((char*)((ng14)));
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB48;

}

static void Cont_110_1(char *t0)
{
    char t9[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    t5 = (t0 + 3368);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t8);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t13 = (t6 + 4);
    t14 = (t8 + 4);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB4;

LAB5:
LAB6:    t24 = *((unsigned int *)t4);
    t25 = *((unsigned int *)t9);
    t26 = (t24 & t25);
    *((unsigned int *)t23) = t26;
    t27 = (t4 + 4);
    t28 = (t9 + 4);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB7;

LAB8:
LAB9:    t55 = (t0 + 4952);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    memset(t59, 0, 8);
    t60 = 1U;
    t61 = t60;
    t62 = (t23 + 4);
    t63 = *((unsigned int *)t23);
    t60 = (t60 & t63);
    t64 = *((unsigned int *)t62);
    t61 = (t61 & t64);
    t65 = (t59 + 4);
    t66 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t66 | t60);
    t67 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t67 | t61);
    xsi_driver_vfirst_trans(t55, 0, 0);
    t68 = (t0 + 4872);
    *((int *)t68) = 1;

LAB1:    return;
LAB4:    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t21 | t22);
    goto LAB6;

LAB7:    t35 = *((unsigned int *)t23);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t23) = (t35 | t36);
    t37 = (t4 + 4);
    t38 = (t9 + 4);
    t39 = *((unsigned int *)t4);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (~(t41));
    t43 = *((unsigned int *)t9);
    t44 = (~(t43));
    t45 = *((unsigned int *)t38);
    t46 = (~(t45));
    t47 = (t40 & t42);
    t48 = (t44 & t46);
    t49 = (~(t47));
    t50 = (~(t48));
    t51 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t51 & t49);
    t52 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t52 & t50);
    t53 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t53 & t49);
    t54 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t54 & t50);
    goto LAB9;

}


extern void work_m_00000000003021248173_2058220583_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Cont_110_1};
	xsi_register_didat("work_m_00000000003021248173_2058220583", "isim/SCC_isim_beh.exe.sim/work/m_00000000003021248173_2058220583.didat");
	xsi_register_executes(pe);
}
