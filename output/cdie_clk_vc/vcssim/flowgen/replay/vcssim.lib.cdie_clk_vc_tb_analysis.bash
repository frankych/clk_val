#!/usr/intel/pkgs/bash/4.4/bin/bash
export WORKAREA='/nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc'
source $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/replay/env.bash

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/cdie_clk_vc_tb/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.cdie_clk_vc_tb.map \
vlogan -work cdie_clk_vc_tb -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/cdie_clk_vc/val/tb.f
