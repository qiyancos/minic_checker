													v0 = 0
f_main [0] [24]
store s0 7
store s1 8
store s2 9
store s3 10
store s4 11
store s5 12
store s6 13
store s7 14
store s8 15
s10 = 10
loadaddr v0 t0
t0 [0] = s10
s10 = 1
store s10 20
s10 = 0
store s10 21
load v0 t1
s10 = 0
s9 = t1 > s10
store s9 22
load 22 t2
s10 = 0
if t2 == s10 goto l0
load 20 t3
a0 = t3
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putint
store a0 23
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 23 t4
store t4 19
s10 = 1
a0 = s10
a1 = 0
load 7 s0
load 8 s1
load 9 s2
load 10 s3
load 11 s4
load 12 s5
load 13 s6
load 14 s7
load 15 s8
return
l0:
s10 = 0
a0 = s10
a1 = 0
load 7 s0
load 8 s1
load 9 s2
load 10 s3
load 11 s4
load 12 s5
load 13 s6
load 14 s7
load 15 s8
return
end f_main
