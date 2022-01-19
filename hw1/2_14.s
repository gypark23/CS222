/*add:
    addi x10, x10, 10              #for any n value         
    jal 2_14
    jr x1
*/

2_14:
    addi x18, x0, 2                #add 2 for bge constant
    bge x10, x18, fib              #x10 is argument n, n < 2
    jr x1                          #if n < 2 return n
  
fib:
    addi x2, x2, -24               #allocate stack space
    sw x1, 0(x2)                   #save return address
    sw x10, 8(x2)                  #save n
    addi x10, x10, -1              #n-1
    jal 2_14                       #fib(n-1)
    
    sw x10, 16(x2)                 #save fib(n-1) return value
    lw x18, 8(x2)                  #load n back from memory
    addi x10, x18, -2              #n-2
    jal 2_14                       #fib(n-2)
    
    lw x18, 16(x2)                 #load fib(n-1) return value
    add x10, x10, x18              #fib(n-1) + fib(n-2)
    
    lw x1, 0(x2)                   #load return address
    addi x2, x2, 24                #clean stack
    
    jr x1                          #return fib(n-1) + fib(n-2)


/*
*   First, we initialize the argument n in x10, the register which we also will use to return the function return value.
*   Immediate value 2 is registered in x18 to compare n with 2.
*   bge instruction compares n with 2, and then jump to the fibonacci loop function
*   if n is greater or equal than 2, bge instruction is thereby used as the control structure.
*   If n is less than 2, the function jumps to the return address, with the argument n itself returned.
*   Otherwise, we proceed to the procedure call, by initiating the stack space allocation,
*   by substracting 24 to stack address.
*   The return address will be saved in memory before the caller is called,
*   and the argument n - 1 is prepared, and the whole function is called with n - 1 argument.
*   Once fib(n-1) is returned in x10, the value is saved in stack, and then another argument
*   n - 2 is prepared, and the fib function is called again.
*   fib(n-1) is retrieved back from the memory, and is added to fib(n-2), which is already stored in 
*   x10. We add them together, store them in x10, and return the value.
*   The callee restores the return address, and we clean stack by adding back 24 to the stack address.
*   Finally, fib(n-2) + fib(n-1) is returned.  
*/