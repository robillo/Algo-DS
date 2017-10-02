#include <stdio.h>

int main() {
    int data[100], i, n, step, temp;

    // prompt
    printf("Enter the number of elements to be sorted: ");
    // user input
    scanf("%d", &n);

    for(i = 0; i < n; ++i) {
        printf("%d. Enter element: ", i + 1);
        scanf("%d", &data[i]);
    }

    // bubble sort
    for(step = 0; step < n-1; ++step) {
        for(i=0; i < n - step - 1; ++i) {
            // > for ascending, < for descending
            if(data[i] > data[i+1]) {
                // swap
                temp = data[i];
                data[i] = data[i + 1];
                data[i + 1] = temp;
            }
        }
    }

    printf("In ascending order:\n");
    // print results
    for(i = 0; i < n; ++i) {
         printf("%d  \n", data[i]);
    }

    return 0;
}