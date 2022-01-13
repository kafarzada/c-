#include <iostream>

using namespace std;

void count_sort(int A[], int N) {
    int F[10] = {0}; // все 0
    for(int i = 0; i < N; i++) {
        F[A[i]]++;
    }

    int i = 0;
    for(int x = 0; x < 10; x++) { // перебираю всевозможные кначения ключа
        for(int k = 0; k < F[x]; k++) {
            A[i] = x;
            i++;
        }
    }
}

void generate_random_array(int A[], int N, int M) {
    for(int i = 0; i < N; i++)
        A[i] = rand() % M;
}

void print_Array(int A[], int N) {
    for(int i = 0; i < N; i++)
        cout << A[i] << '\t';
    cout << endl;
}

int main() {

    return 0;
}