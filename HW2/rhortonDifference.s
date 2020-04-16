.text
main:
 addi $v0, $0, 5    # service 5 -> v0  read INT
 syscall 
 add $t0, $0, $v0 #t0 has v0 value
 addi $v0, $0, 5 #service 5 -> v0 read INT
 syscall
 add $t1, $0, $v0 #t1 has v0 value
 sub $a0, $t0, $t1 #subtract t1 from t0
 addi $v0,$0,1 #service 1 -> print a0
 syscall
 addi $v0, $0, 10 #service 10 -> v0 exit
 syscall