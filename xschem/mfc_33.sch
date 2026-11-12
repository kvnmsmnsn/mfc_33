v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -270 -290 -270 -240 {
lab=sbd}
N -270 -290 50 -290 {
lab=sbd}
N -270 -210 50 -210 {
lab=sbd}
N -270 -180 -270 -140 {
lab=sbd}
N -270 -140 50 -140 {
lab=sbd}
N 50 -290 50 -140 {
lab=sbd}
N 50 -140 160 -140 {
lab=sbd}
N -420 -210 -310 -210 {
lab=gate}
C {devices/ipin.sym} -420 -210 0 0 {name=p1 lab=gate}
C {sky130_fd_pr/nfet_01v8.sym} -290 -210 0 0 {name=M2
L=1.2
W=3.36
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 150 -140 0 0 {name=p3 lab=sbd}
