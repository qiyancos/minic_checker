																			v0 = 0
v1 = 0
f_main [0] [27]
store s0 7
store s1 8
store s2 9
store s3 10
store s4 11
store s5 12
store s6 13
store s7 14
store s8 15
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_getint
store a0 19
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 19 t0
loadaddr v0 t1
t1 [0] = t0
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_getint
store a0 20
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 20 t2
loadaddr v1 t3
t3 [0] = t2
s10 = 1
store s10 22
s10 = 0
store s10 23
load v0 t4
load v1 t5
s9 = t4 != t5
store s9 24
load 24 t6
s10 = 0
if t6 == s10 goto l0
load 22 s0
a0 = s0
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putint
store a0 25
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 25 s1
store s1 21
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
goto l1
l0:
load 23 s2
a0 = s2
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putint
store a0 26
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 26 s3
store s3 21
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
l1:
end f_main
