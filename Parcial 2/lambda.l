%{
#include <stdio.h>
#include <stdbool.h>

bool acepta = true;
%}

%%
"lambda"   { /* No hacemos nada especial aquí */ }
[a-zA-Z_][a-zA-Z0-9_]*  { /* Es un identificador válido */ }
"="        { /* Asignación, parte de la sintaxis */ }
"**"       { /* Operador de potencia, parte de la sintaxis */ }
[0-9]+     { /* Número válido */ }
[ \t\n]+   ;  // Ignorar espacios
.          { acepta = false; }  // Cualquier otro carácter es inválido
%%

int main(int argc, char **argv)
{
    yylex();

    if (acepta) {
        printf("ACEPTA\n");
    } else {
        printf("NO ACEPTA\n");
    }

    return 0;
}
