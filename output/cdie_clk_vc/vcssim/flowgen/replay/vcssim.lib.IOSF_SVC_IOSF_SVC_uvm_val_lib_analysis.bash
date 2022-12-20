#!/usr/intel/pkgs/bash/4.4/bin/bash
export WORKAREA='/nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc'
source $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/replay/env.bash

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/IOSF_SVC_IOSF_SVC_uvm_val_lib/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.IOSF_SVC_IOSF_SVC_uvm_val_lib.map \
vlogan -work IOSF_SVC_IOSF_SVC_uvm_val_lib -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/IOSF_SVC/val/IOSF_SVC_uvm_val_lib_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/IOSF_SVC/val/IOSF_SVC_uvm_val_lib.f
