#include <iostream>


int insert_sort(int A[], int N) {
    for(int pos = 0; pos < N; pos++) {
        int i = pos;
        while(i > 0 and A[i - 1] > A[i]) {
            int temp = A[i];
            A[i] = A[i - 1];
            A[i - 1] = temp;
            i -= 1;
        }
    }
}
int main() {

    return 0;
}