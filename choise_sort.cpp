#include <iostream>


int choise_sort(int A[], int N) {
    for(int pos = 0; pos < N - 1; pos++) {
        for(int i = pos + 1; i < N; i++) {
            if(A[i] < A[pos]) {
                int temp = A[i];
                A[i] = A[pos];
                A[pos] = A[i];
            }
        }
    }
}
int main() {

    return 0;
}