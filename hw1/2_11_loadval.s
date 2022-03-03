store:
    addi x21, x0, 0x11
    slli x21, x21, 24 #0x11000000
    addi x19, x0, 5
    sw x19, 0(x21) 
    addi x19, x19, 5
    sw x19, 8(x21)
    addi x19, x19, 5
    sw x19, 16(x21) 
    addi x19, x19, 5
    sw x19, 24(x21)
    addi x19, x19, 5
    sw x19, 32(x21) 
    addi x19, x19, 5
    sw x19, 40(x21)
    addi x19, x19, 5
    sw x19, 48(x21) 
    addi x19, x19, 5
    sw x19, 56(x21)
    addi x19, x19, 5
    sw x19, 64(x21) 
    addi x19, x19, 5
    sw x19, 72(x21)
    addi x19, x19, 5
    sw x19, 80(x21) 
    addi x19, x19, 5
    sw x19, 88(x21)
    addi x19, x19, 5
    sw x19, 96(x21) 
    addi x19, x19, 5
    sw x19, 104(x21)
    addi x19, x19, 5
    sw x19, 112(x21) 
    addi x19, x19, 5
    sw x19, 120(x21)
    addi x19, x19, 5
    sw x19, 128(x21) 
    addi x19, x19, 5
    sw x19, 136(x21)
    addi x19, x19, 5
    sw x19, 144(x21) 
    addi x19, x19, 5
    sw x19, 152(x21)
    addi x19, x19, 5
    sw x19, 160(x21) 
    addi x19, x19, 5
    sw x19, 168(x21)
    addi x19, x19, 5
    sw x19, 176(x21) 
    addi x19, x19, 5
    sw x19, 184(x21)
    addi x19, x19, 5
    sw x19, 192(x21) 
    addi x19, x19, 5
    sw x19, 200(x21)
    addi x19, x19, 5
    sw x19, 208(x21) 
    addi x19, x19, 5
    sw x19, 216(x21)
    addi x19, x19, 5
    sw x19, 224(x21) 
    addi x19, x19, 5
    sw x19, 232(x21)
    addi x19, x19, 5
    sw x19, 240(x21) 
    addi x19, x19, 5
    sw x19, 248(x21)

2_11:
    addi x18, x0, 0    #i
    addi x10, x0, 0    #sum
    addi x20, x0, 32
    addi x24, x0, 96
loop:
    addi x21, x0, 0x11
    slli x21, x21, 24 #0x11000000
    rem x22, x18, x20 #i%32
    slli x22, x22, 3
    add x21, x21, x22 #mem + 8i
    lw x23, 0(x21)
    add x10, x10, x23
    addi x18, x18, 3
    slti x24, x18, 96
    bne x24, x0, loop
exit: