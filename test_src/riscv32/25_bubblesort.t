																																																																	v0 = 0
v1 = malloc 420
v2 = 0
v3 = 0
f_main [0] [52]
store s0 7
store s1 8
store s2 9
store s3 10
store s4 11
store s5 12
store s6 13
store s7 14
store s8 15
s10 = 32
loadaddr v2 t0
t0 [0] = s10
s10 = 10
loadaddr v3 t1
t1 [0] = s10
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
load 19 t2
loadaddr v0 t3
t3 [0] = t2
s10 = 0
store s10 20
l1:
load 20 t4
load v0 t5
s9 = t4 < t5
store s9 23
load 23 t6
s10 = 0
if t6 == s10 goto l0
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
load 24 s0
loadaddr v1 s1
load 25 s2
s9 = s1 + s2
s9 [0] = s0
s10 = 1
s9 = t4 + s10
store s9 26
load 26 s3
store s3 20
t4 = s3
goto l1
l0:
s10 = 1
s9 = t5 - s10
store s9 27
load 27 s4
store s4 20
t4 = s4
l6:
s10 = 0
s9 = t4 > s10
store s9 28
load 28 s5
s10 = 0
if s5 == s10 goto l5
s10 = 0
store s10 21
l4:
load 21 s6
s9 = s6 < t4
store s9 29
load 29 s7
s10 = 0
if s7 == s10 goto l3
s10 = 4
s9 = s10 * s6
store s9 30
load 30 s8
s9 = s1 + s8
s9 = s9 [0]
store s9 31
s10 = 1
s9 = s6 + s10
store s9 32
s10 = 4
load 32 t0
s9 = s10 * t0
store s9 33
load 33 t0
s9 = s1 + t0
s9 = s9 [0]
store s9 34
load 31 t0
load 34 t1
s9 = t0 > t1
store s9 35
load 35 t0
s10 = 0
if t0 == s10 goto l2
s10 = 4
s9 = s10 * s6
store s9 36
load 36 t0
s9 = s1 + t0
s9 = s9 [0]
store s9 37
load 37 t0
store t0 22
s10 = 1
s9 = s6 + s10
store s9 38
s10 = 4
load 38 t0
s9 = s10 * t0
store s9 39
load 39 t0
s9 = s1 + t0
s9 = s9 [0]
store s9 40
s10 = 4
s9 = s10 * s6
store s9 41
load 40 t0
load 41 t1
s9 = s1 + t1
s9 [0] = t0
s10 = 1
s9 = s6 + s10
store s9 42
s10 = 4
load 42 t0
s9 = s10 * t0
store s9 43
load 22 t0
load 43 t1
s9 = s1 + t1
s9 [0] = t0
l2:
s10 = 1
s9 = s6 + s10
store s9 44
load 44 t0
store t0 21
s6 = t0
goto l4
l3:
s10 = 1
s9 = t4 - s10
store s9 45
load 45 t0
store t0 20
t4 = t0
goto l6
l5:
s10 = 0
store s10 20
t4 = s10
l8:
s9 = t4 < t5
store s9 46
load 46 t0
s10 = 0
if t0 == s10 goto l7
s10 = 4
s9 = s10 * t4
store s9 47
load 47 t0
s9 = s1 + t0
s9 = s9 [0]
store s9 48
load 48 t0
store t0 22
load 22 t0
a0 = t0
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putint
store a0 49
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 49 t0
store t0 22
load v3 t0
a0 = t0
store t0 0
store t1 1
store t2 2
store t3 3
store t4 4
store t5 5
store t6 6
call f_putchar
store a0 50
load 0 t0
load 1 t1
load 2 t2
load 3 t3
load 4 t4
load 5 t5
load 6 t6
load 50 t0
store t0 22
s10 = 1
s9 = t4 + s10
store s9 51
load 51 t0
store t0 20
t4 = t0
goto l8
l7:
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
