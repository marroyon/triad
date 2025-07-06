#!/bin/bash

# Rango de tamaños de array (N)
sizes=(4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576)

# Número de repeticiones por tamaño
reps=3

# Ejecutar para cada tamaño
for size in "${sizes[@]}"; do
    echo ">>> Tamaño N = $size"
    for ((i = 1; i <= reps; i++)); do
        echo "  Ejecución $i:"
        mpirun -n 1 ./triad.p $size
        echo ""
    done
    echo "---------------------------------------------"
done

