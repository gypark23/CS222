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


/*
*   First, we initialize int i = 0 and int sum = 0 in x18 and x10 respectively.
*   Immediate value 32 is registered in x20 for later use.
*   Then, the loop starts, by first registering the immediate value 0x11000000 by adding 0x11 and left shift by 24.
*   i%32 is calculated in the next operation, and 8 is multiplied (int size = 8) to find the location of the memory
*   Then, the memory location of the values[i%32] is found by 0x11000000 + 8*(i%32), and the element is loaded in x23.
*   The loaded value is added to sum, and the loop condition is updated and checked by adding 3 to i and checking i < 96.
*   The loop continues until it repeats 96 times.
*
*   int i is registered in x18, int sum is registered in x10, and int values[] is located in memory of 0x11000000.
*   values[i] is located in memory of 0x11000000 + 8*i. 
*
*   The instructions slti and bne implement the control structure by comparing i to 96 and jumping to loop if the condition is met.
*/