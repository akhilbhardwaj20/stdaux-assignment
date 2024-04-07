#include <stdio.h>

void printArray(int arr[], int size) {
    printf("Elements of the array:\n");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int originalArray[] = {1, 2, 3, 4, 5};
    int arraySize = sizeof(originalArray) / sizeof(originalArray[0]);

    // Passing array using call by value
    int copiedArray[arraySize];
    for (int i = 0; i < arraySize; i++) {
        copiedArray[i] = originalArray[i];
    }

    // Calling the function with the copied array
    printArray(copiedArray, arraySize);

    return 0;
}
