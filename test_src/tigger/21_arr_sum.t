																v0 = malloc 20
f_main [0] [36]
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
store s0 7
store s1 8
store s2 9
store s3 10
store s4 11
store s5 12
store s6 13
store s7 14
store s8 15
call f_getint
store a0 19
s10 = 4
s11 = 0
s9 = s10 * s11
store s9 20
load 19 t0
loadaddr v0 t1
load 20 t2
s9 = t1 + t2
s9 [0] = t0
call f_getint
store a0 21
s10 = 4
s11 = 1
s9 = s10 * s11
store s9 22
load 21 t3
load 22 t4
s9 = t1 + t4
s9 [0] = t3
call f_getint
store a0 23
s10 = 4
s11 = 2
s9 = s10 * s11
store s9 24
load 23 t5
load 24 t6
s9 = t1 + t6
s9 [0] = t5
call f_getint
store a0 25
s10 = 4
s11 = 3
s9 = s10 * s11
store s9 26
load 25 s0
load 26 s1
s9 = t1 + s1
s9 [0] = s0
call f_getint
store a0 27
s10 = 4
s11 = 4
s9 = s10 * s11
store s9 28
load 27 s2
load 28 s3
s9 = t1 + s3
s9 [0] = s2
s10 = 4
store s10 29
s10 = 0
store s10 30
l1:
load 29 s4
s10 = 1
s9 = s4 > s10
store s9 31
load 31 s5
s10 = 0
if s5 == s10 goto l0
s10 = 4
s9 = s10 * s4
store s9 32
load 32 s6
s9 = t1 + s6
s9 = s9 [0]
store s9 33
load 30 s7
load 33 s8
s9 = s7 + s8
store s9 34
load 34 t0
store t0 30
s7 = t0
s10 = 1
s9 = s4 - s10
store s9 35
load 35 t0
store t0 29
s4 = t0
goto l1
l0:
a0 = s7
a1 = 0
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
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
