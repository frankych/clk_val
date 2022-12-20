class send_ncu_pcu_msg_sequence extends base_gpsb_sequence;

    `uvm_object_utils(send_ncu_pcu_msg_sequence)

    function new(string name="");
        super.new(name);
    endfunction

    task body();
        dest_id = cfg.cdie_ccf_multicast_portid;
        src_id = cfg.soc_ncevents_gpsb_portid;
        
        send_msgd_txn();
    endtask

    task send_msgd_txn();
        iosfsbm_cm_uvm::msgd_xaction txn;

        register_data = new[4]('{'h0, 'h0, 'h0, 'h40});
        extended_headers = '{8'h00, cfg.punit_to_dmu_sai, 8'h00, 8'h00};
        set_endpoints_for_hier_sb();

        txn = msgd_xaction::type_id::create("txn", null);
        txn.set_cfg(val_gpsb_fabric.fabric_cfg_i.ep_cfg_i, val_gpsb_fabric.common_cfg_i);
        txn.set_sequencer(val_gpsb_fabric.fbrcvc_sequencer);

        if (!txn.randomize() with {
                    dest_pid == svc_dest_pid;
                    local_dest_pid == dest_id[7:0];
                    src_pid == svc_src_pid;
                    local_src_pid == src_id[7:0];
                    opcode == cfg.ncu_pcu_msg_opcode;
                    EH == 1;
                    foreach(extended_headers[i])
                    ext_headers_per_txn[i] == extended_headers[i];
                    ext_headers_per_txn.size() == extended_headers.size();
                    xaction_type == iosfsbm_cm_uvm::MSGD;
                    xaction_class == iosfsbm_cm_uvm::POSTED;
                    foreach(register_data[i])
                    data[i] == register_data[i];
                    data.size() == register_data.size();
                    misc == 'h0;
                }) `uvm_error(get_type_name(), "Could not randomize iosf sequence for sending cbo drain msg");
        `uvm_send(txn);

    endtask

endclass