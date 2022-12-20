#!/usr/intel/pkgs/bash/4.4/bin/bash
export WORKAREA='/nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc'
source $WORKAREA/output/cdie_clk_vc/vcssim/flowgen/replay/env.bash

cd /nfs/site/disks/arl_frankych_wa_01/NVL_CLK_VAL/frameworks.validation.vip.clock-vc/output/cdie_clk_vc/vcssim/lib/vc_sv_pydoh_infra_val/tmp ; \
env SYNOPSYS_SIM_SETUP=$WORKAREA/output/cdie_clk_vc/vcssim/flowgen/mapfiles/vcssim.lib.vc_sv_pydoh_infra_val.map \
vlogan -work vc_sv_pydoh_infra_val -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/vc_sv_pydoh_infra/val/val_opts.f -f $WORKAREA/output/cdie_clk_vc/vcssim/analysis_opts.f -f $WORKAREA/output/cdie_clk_vc/genfile_dv/vcssim/vc_sv_pydoh_infra/val/val.f
