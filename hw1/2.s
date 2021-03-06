//2_1a, Set the value to 0 for registers X18-X25.
2_1a:
    mul x18, x18, x0
    mul x19, x18, x0
    mul x20, x18, x0
    mul x21, x18, x0
    mul x22, x18, x0
    mul x23, x18, x0
    mul x24, x18, x0
    mul x25, x18, x0


//2b Put the first eight prime numbers (1, 2, 3, 5, 7, 11, 13, 17) into registers X18–X25.
2_1b:
    addi x18, x0, 1
    addi x19, x0, 2
    addi x20, x0, 3
    addi x21, x0, 5
    addi x22, x0, 7
    addi x23, x0, 11
    addi x24, x0, 13
    addi x25, x0, 17

//2_1c Put the value 0x0 0FFF FFFF FFFF into X18.
2_1c:
    addi x18, x0, -1
    srli x18, x18, 20

//2_1g Put the value 0x0 0BA9 8765 4321 into X18.
2_1g:
    li x18 0xBA987654321

//2_3a Load the value from address 0x0 0FFF FFFF FFFF into X20.
2_3a: 
    addi x18, x0, -1
    srli x18, x18, 20
    ld x20, 0(x18)

//2_3b Store the value 13 as an 8-bit (byte) value into address 0x0 0FFF FFFF FFFF.
2_3b:
    addi x18, x0, -1
    srli x18, x18, 20
    addi x19, x0, 13
    sb x19, 0(x18)

//2_3c Store the value 13 as a 64-bit value into address 0x0 0FFF FFFF FFFF.    
2_3c: 
    addi x18, x0, -1
    srli x18, x18, 20
    addi x19, x0, 13
    sw x19, 0(x18)
