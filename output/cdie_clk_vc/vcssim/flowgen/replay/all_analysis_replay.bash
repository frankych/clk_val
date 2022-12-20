#!/usr/intel/pkgs/bash/4.4/bin/bash
export WORKAREA='/nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc'
source $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/replay/env.bash

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/uvm_val/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.uvm_val.map \
vlogan -work uvm_val -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/uvm/val/val_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/uvm/val/val.f

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/saola_val_uvm/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.saola_val_uvm.map \
vlogan -work saola_val_uvm -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/saola/val/val_uvm_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/saola/val/val_uvm.f

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/IOSF_SVC_IOSF_SVC_uvm_val_lib/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.IOSF_SVC_IOSF_SVC_uvm_val_lib.map \
vlogan -work IOSF_SVC_IOSF_SVC_uvm_val_lib -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/IOSF_SVC/val/IOSF_SVC_uvm_val_lib_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/IOSF_SVC/val/IOSF_SVC_uvm_val_lib.f

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/vc_sv_pydoh_infra_val/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.vc_sv_pydoh_infra_val.map \
vlogan -work vc_sv_pydoh_infra_val -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/vc_sv_pydoh_infra/val/val_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/vc_sv_pydoh_infra/val/val.f

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/cdie_clk_vc_val/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.cdie_clk_vc_val.map \
vlogan -work cdie_clk_vc_val -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/cdie_clk_vc/val/val_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/cdie_clk_vc/val/val.f

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/cdie_clk_vc_tb/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.cdie_clk_vc_tb.map \
vlogan -work cdie_clk_vc_tb -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/cdie_clk_vc/val/tb.f
