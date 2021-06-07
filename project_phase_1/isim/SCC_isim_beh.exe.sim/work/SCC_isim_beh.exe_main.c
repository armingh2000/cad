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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003316630858_0156549398_init();
    work_m_00000000002054852329_2513369863_init();
    work_m_00000000000397118377_1153420228_init();
    work_m_00000000002211021786_0882984723_init();
    work_m_00000000003307175283_0992325708_init();
    work_m_00000000000055785600_2067414431_init();
    work_m_00000000003307175283_2507325274_init();
    work_m_00000000002198309568_0886308060_init();
    work_m_00000000002211021786_0967167703_init();
    work_m_00000000000267382809_1292031434_init();
    work_m_00000000003021248173_2058220583_init();
    work_m_00000000004142813740_2321183677_init();
    work_m_00000000000098668749_2827948545_init();
    work_m_00000000003430686381_1480401500_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003430686381_1480401500");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
