																			v0 = 0
f_f [1] [30]
store a0 19
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
load 19 t0
s10 = 1
s9 = t0 == s10
store s9 20
load 20 t1
s10 = 0
if t1 == s10 goto l0
s10 = 1
a0 = s10
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
l0:
s10 = 2
s9 = t0 == s10
store s9 21
load 21 t2
s10 = 0
if t2 == s10 goto l1
s10 = 1
a0 = s10
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
l1:
s10 = 1
s9 = t0 - s10
store s9 24
load 24 t3
store t3 22
s10 = 2
s9 = t0 - s10
store s9 25
load 25 t4
store t4 23
load 22 t5
a0 = t5
call f_f
store a0 27
load 23 t6
a0 = t6
call f_f
store a0 28
load 27 s0
load 28 s1
s9 = s0 + s1
store s9 29
load 29 s2
store s2 26
load 26 s3
a0 = s3
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
end f_f
f_main [0] [24]
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
load 19 s4
loadaddr v0 s5
s5 [0] = s4
load v0 s6
a0 = s6
call f_f
store a0 22
load 22 s7
store s7 20
load 20 s8
a0 = s8
call f_putint
store a0 23
load 23 t0
store t0 21
a0 = s8
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
