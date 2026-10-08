
#!/bin/bash

# Verificar que se haya proporcionado un archivo
if [ -z "$1" ]; then
    echo "Uso: ./convertir.sh archivo.cpp"
    exit 1
fi

# Verificar que exista el archivo
if [ ! -f "$1" ]; then
    echo "Error: No se encuentra el archivo $1"
    exit 1
fi

# Nombre base del archivo
nombre="${1%.cpp}"

echo "Convirtiendo C++ a ensamblador x86-64..."
if ! g++ -S "$1" -o "${nombre}_x86.s"; then
    exit 1
fi

echo "Convirtiendo C++ a ensamblador RISC-V..."
if ! riscv64-linux-gnu-g++ -S "$1" -o "${nombre}_RISCV.s"; then
    exit 1
fi

echo "Conversiones completadas exitosamente."
echo "Archivos generados:"
echo "${nombre}_x86.s"
echo "${nombre}_RISCV.s"

