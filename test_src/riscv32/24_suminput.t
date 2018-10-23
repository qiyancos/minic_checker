															v0 = 0
v1 = malloc 40
f_main [0] [31]
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
load v0 t2
s10 = 10
s9 = t2 > s10
store s9 20
load 20 t3
s10 = 0
if t3 == s10 goto l0
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
store s10 22
load 22 t4
store t4 21
l2:
s9 = t4 < t2
store s9 23
load 23 t5
s10 = 0
if t5 == s10 goto l1
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_getint
store a0 24
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
s10 = 4
s9 = s10 * t4
store s9 25
load 24 t6
loadaddr v1 s0
load 25 s1
s9 = s0 + s1
s9 [0] = t6
s10 = 4
s9 = s10 * t4
store s9 26
load 26 s2
s9 = s0 + s2
s9 = s9 [0]
store s9 27
load 21 s3
load 27 s4
s9 = s3 + s4
store s9 28
load 28 s5
store s5 21
s3 = s5
s10 = 1
s9 = t4 + s10
store s9 29
load 29 s6
store s6 22
t4 = s6
goto l2
l1:
a0 = s3
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putint
store a0 30
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 30 s7
t1 [0] = s7
t2 = s7
a0 = s3
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
