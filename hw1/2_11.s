2_11:
    addi x18, x0, 0    #i = 0;
    addi x10, x0, 0    #sum = 0;
    addi x20, x0, 32   #registered immediate 32 since rem doesn't support immediates
loop:
    addi x21, x0, 0x11 #0x11
    slli x21, x21, 24  #0x11000000 (the starting address for the array)
    rem x22, x18, x20  #i%32
    slli x22, x22, 3   #8*(i%32) since integer has 8 bytes
    add x21, x21, x22  #mem + 8i
    lw x23, 0(x21)     #load values[i%32]
    add x10, x10, x23  #sum += values[i%32]
    addi x18, x18, 3   #i = i + 3 (in for loop)
    slti x24, x18, 96  #i < 96 (in for loop)
    bne x24, x0, loop  #for loop