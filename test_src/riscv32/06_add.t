						v0 = 0
v1 = 0
v2 = 0
f_main [0] [22]
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
s10 = 20
loadaddr v1 t1
t1 [0] = s10
load v0 t2
load v1 t3
s9 = t2 + t3
store s9 20
load 20 t4
store t4 19
load 19 t5
a0 = t5
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putint
store a0 21
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 21 t6
loadaddr v2 s0
s0 [0] = t6
a0 = t5
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
