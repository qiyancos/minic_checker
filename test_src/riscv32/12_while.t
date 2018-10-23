													v0 = 0
v1 = 0
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
s10 = 0
loadaddr v1 t0
t0 [0] = s10
s10 = 3
loadaddr v0 t1
t1 [0] = s10
l1:
load v0 t2
s10 = 0
s9 = t2 > s10
store s9 19
load 19 t3
s10 = 0
if t3 == s10 goto l0
load v1 t4
s9 = t4 + t2
store s9 20
load 20 t5
t0 [0] = t5
t4 = t5
s10 = 1
s9 = t2 - s10
store s9 21
load 21 t6
t1 [0] = t6
t2 = t6
goto l1
l0:
a0 = t4
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
load 23 s0
store s0 22
a0 = t4
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
