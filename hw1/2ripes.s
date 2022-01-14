
2a:
    mul x18, x18, x0
    mul x19, x18, x0
    mul x20, x18, x0
    mul x21, x18, x0
    mul x22, x18, x0
    mul x23, x18, x0
    mul x24, x18, x0
    mul x25, x18, x0

2b:
    addi x18, x0, 1
    addi x19, x0, 2
    addi x20, x0, 3
    addi x21, x0, 5
    addi x22, x0, 7
    addi x23, x0, 11
    addi x24, x0, 13
    addi x25, x0, 17

2c:
    addi x18, x0, -1
    srli x18, x18, 20

2g:
    addi x18, x0, 0
    addi x18, x0, 0xBA
    slli x18, x18, 8
    addi x18, x18, 0x98
    slli x18, x18, 8
    addi x18, x18, 0x76
    slli x18, x18, 8
    addi x18, x18, 0x54
    slli x18, x18, 8
    addi x18, x18, 0x32
    slli x18, x18, 4
    addi x18, x18, 0x1