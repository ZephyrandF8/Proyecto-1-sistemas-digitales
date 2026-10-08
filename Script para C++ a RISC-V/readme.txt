
Ejecutar el script requiere instalación de dependencias en Ubuntu/Debian

Abrir una terminal y ejecutar:

sudo apt update
sudo apt install g++ gcc-riscv64-linux-gnu g++-riscv64-linux-gnu

En otras distribuciones Linux, instalar los compiladores equivalentes mediante el gestor de paquetes correspondiente.

Instrucciones de uso

1. Colocar convertir.sh en el directorio de trabajo.

2. Abrir una terminal y desplazarse hasta dicho directorio:

cd "/ruta/del/directorio"

3. Otorgar permisos de ejecución al script:

chmod +x convertir.sh

4. Ejecutar el script indicando el archivo C++:

./convertir.sh programa.cpp