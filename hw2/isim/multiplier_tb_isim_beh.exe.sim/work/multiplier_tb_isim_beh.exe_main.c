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
    work_m_00000000000217050044_3230035726_init();
    work_m_00000000000307518961_3078709144_init();
    work_m_00000000000400193474_0343363717_init();
    work_m_00000000000148745164_4234270570_init();
    work_m_00000000001858094259_2081592774_init();
    work_m_00000000000632177984_4124547905_init();
    work_m_00000000002281220618_1345475044_init();
    work_m_00000000001362644266_0937465578_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001362644266_0937465578");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
