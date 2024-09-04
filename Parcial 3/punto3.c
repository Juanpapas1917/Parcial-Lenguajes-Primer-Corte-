#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Uso: %s archivo palabra_clave\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        printf("No se puede abrir el archivo %s\n", argv[1]);
        return 1;
    }

    char line[256];
    int count = 0;
    while (fgets(line, sizeof(line), file)) {
        char *ptr = line;
        while ((ptr = strstr(ptr, argv[2])) != NULL) {
            count++;
            ptr += strlen(argv[2]);
        }
    }

    fclose(file);
    printf("La palabra '%s' se repite %d veces en el archivo '%s'.\n", argv[2], count, argv[1]);
    return 0;
}
