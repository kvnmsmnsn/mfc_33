v {xschem version=3.4.5 file_version=1.2}
G { 980 -180 }
C {devices/launcher.sym} 900 -180 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
