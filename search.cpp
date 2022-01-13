#include <iostream>

using namespace std;

int left_bound(int A[], int N, int x) {
    int left = -1;
    int right = N;
    while(right - left > 1) {
        int middle = (left + right) / 2;
        if(A[middle] < x) {
            left = middle;
        } else {
            right = middle;
        }
    }

    return left;
}

int find(int A[], int N, int x) {
    int left = left_bound(A, N, x);
    int potential_first_index_of_x_int_A = left + 1;
    if(potential_first_index_of_x_int_A < N and 
       A[potential_first_index_of_x_int_A] == x) {
           return potential_first_index_of_x_int_A;
       } else return -1; // x not found
}

int main() {
    int N = 10;
    int A[] = {1, 3, 3, 7, 7, 7, 7, 9, 10, 10};
    int x;
    cin >> x;

    cout << "left boudary: " << left_bound( A,  N,  x) << endl;
    return 0;
}