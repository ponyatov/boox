        @ Аргументы (в регистрах)
        @ r0: начальный адрес массива
        @ r1: конечный адрес массива
        @
        @ Возврат результата
        @ r3: сумма массива

        .global sum

sum:    mov   r3, #0            @ r3 = 0
loop:   ldrb  r2, [r0], #1      @ r2 = *r0++    ; получить следующий элемент
        add   r3, r2, r3        @ r3 += r2      ; суммирование
        cmp   r0, r1            @ if (r0 != r1) ; проверка на конец массива
        bne   loop              @ goto loop     ; цикл
        mov   pc, lr            @ pc = lr       ; возврат результата по готовности