#include <iostream>

using namespace std;

int main() {
    int N, M;
    cin >> N >> M;
    int A[N][M];

    for(int i = 0; i < N; i++) {
        for(int j = 0; j < M; j++) {
            A[i][j] = i * M + j;
        }
    }

    for(int i = 0; i < N; i++) {
        for(int j = 0; j < M; j++) {
            cout << A[i][j] << '\t';
        }
        cout << endl;
    }

    //memory investigation
    int *p = (int *)A;
    for(int i = 0; i < M*N; i++) {
        cout << *(p + i) << ' ';
    }


    
    return 0;
} 