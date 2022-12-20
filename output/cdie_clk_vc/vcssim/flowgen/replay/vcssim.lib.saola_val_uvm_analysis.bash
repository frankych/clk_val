#!/usr/intel/pkgs/bash/4.4/bin/bash
export WORKAREA='/nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc'
source $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/replay/env.bash

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/saola_val_uvm/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.saola_val_uvm.map \
vlogan -work saola_val_uvm -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/saola/val/val_uvm_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/saola/val/val_uvm.f
