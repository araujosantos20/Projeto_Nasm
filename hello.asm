section .text
    global _start           ;precisa ser adicionado para o gerador do executavel saiba onde começa

_start:
    mov edx,5             ;tamanho do texto. len(length-> comprimento)
    mov ecx,msg             ;mensagem de texto para exibir
    mov ebx,1               ;Decritor de arquivo
    mov eax,4               ;chamada para escrever o teto na tela
    int 0x80                ;chama o terminal para exibir o texto

section .data               ;seçaõ de dados 
msg db 'Hello, world!'      ;mensagem que dee aparecer
len equ $ - msg             ;obtem a quantidade de caracteres da mensagem