//Ordenamiento por burbuja
#include <iostream>
using namespace std;
int numero;
int numeros[5];
int i, j, aux;
int main() {
    for (i = 0; i < 5; i++) {
        cout << "Ingresa un numero: ";
        cin >> numero; // Leer el dato de la consola y guardarlo en la variable
        numeros[i] = numero; // Guardar el numero en el arreglo
    }
    // Algoritmo de ordenamiento burbuja
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5 - 1; j++) {
            if (numeros[j] > numeros[j + 1]) {
                aux = numeros[j];
                numeros[j] = numeros[j + 1];
                numeros[j + 1] = aux;
            }
        }
    }
    // Mostrar los números ordenados
    cout << "Números ordenados: ";
    for (i = 0; i < 5; i++) {
        cout << numeros[i] << " ";
    }
    return 0;
}