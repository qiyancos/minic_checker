																													v0 = 0
f_fib [1] [28]
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
s10 = 0
store s10 20
s10 = 1
store s10 21
load 19 t0
s10 = 0
s9 = t0 == s10
store s9 23
load 23 t1
s10 = 0
if t1 == s10 goto l0
s10 = 0
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
s10 = 1
s9 = t0 == s10
store s9 24
load 24 t2
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
l3:
s10 = 1
s9 = t0 > s10
store s9 25
load 25 t3
s10 = 0
if t3 == s10 goto l2
load 20 t4
load 21 t5
s9 = t4 + t5
store s9 26
load 26 t6
store t6 22
store t5 20
t4 = t5
load 22 s0
store s0 21
t5 = s0
s10 = 1
s9 = t0 - s10
store s9 27
load 27 s1
store s1 19
t0 = s1
goto l3
l2:
a0 = s0
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
end f_fib
f_main [0] [23]
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
load 19 s2
loadaddr v0 s3
s3 [0] = s2
load v0 s4
a0 = s4
call f_fib
store a0 21
load 21 s5
store s5 20
load 20 s6
a0 = s6
call f_putint
store a0 22
load 22 s7
s3 [0] = s7
s4 = s7
a0 = s6
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
