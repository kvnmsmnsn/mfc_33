v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 600 -310 1400 90 {flags=graph
y1=-2
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="gate

sbd"
color="4 10"
dataset=-1
unitx=1
logx=0
logy=0
x2=10n}
B 2 600 220 1400 620 {flags=graph
y1=-350u
y2=350u
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
i(vmeas_px)"
color="6 21"
dataset=-1
unitx=1
logx=0
logy=0
x2=10n}
N -520 -210 -450 -210 {
lab=gate}
N -390 -210 -310 -210 {
lab=#net1}
N -10 -210 40 -210 {
lab=sbd}
N 40 -210 40 -140 {
lab=sbd}
N 40 -80 40 -30 {
lab=GND}
N -520 390 -450 390 {
lab=gate}
N -390 390 -310 390 {
lab=#net2}
N -10 390 40 390 {
lab=sbd_parax}
N 40 390 40 460 {
lab=sbd_parax}
N 40 520 40 570 {
lab=GND}
C {devices/code.sym} -300 90 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 40 -30 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} -120 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* .lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
vG gate 0 SIN ( 0V 1.8V 1GHz)
.control
save all
tran 10p 10n
write tb_mfc_33.raw
.endc
"}
C {devices/launcher.sym} -310 250 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/ipin.sym} -520 -210 0 0 {name=p1 lab=gate}
C {devices/ammeter.sym} -420 -210 3 0 {name=Vmeas savecurrent=true}
C {devices/res.sym} 40 -110 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 40 -210 0 1 {name=p2 sig_type=std_logic lab=sbd}
C {mfc_33.sym} -160 -210 0 0 {name=x1}
C {devices/gnd.sym} 40 570 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} -520 390 0 0 {name=p3 lab=gate}
C {devices/ammeter.sym} -420 390 3 0 {name=Vmeas_px savecurrent=true}
C {devices/res.sym} 40 490 0 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 40 390 0 1 {name=p4 sig_type=std_logic lab=sbd_parax}
C {mfc_33.sym} -160 390 0 0 {name=x2
schematic=mfc_33_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/mfc_33.sim.spice])"
tclcommand="textwindow [file normalize ../mag/mfc_33.sim.spice]"
}
