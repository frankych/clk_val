#!/usr/intel/pkgs/bash/4.4/bin/bash
export WORKAREA='/nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc'
source $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/replay/env.bash

/bin/mkdir -p $WORKAREA/output/cdie_clk_vc/vcssim/model/cdie_clk_vc_model; \

/bin/mkdir -p $WORKAREA/output/cdie_clk_vc/vcssim/model/cdie_clk_vc_model/tmp; \
cd $WORKAREA/output/cdie_clk_vc/vcssim/model/cdie_clk_vc_model/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.model.cdie_clk_vc_model.map \
vcs cdie_clk_vc_tb -o $WORKAREA/output/cdie_clk_vc/vcssim/model/cdie_clk_vc_model/cdie_clk_vc_model.simv -file $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/liblist/vcssim.model.cdie_clk_vc_model.liblist    -file $WORKAREA/output/cdie_clk_vc/vcssim/elab_opts.f
