#include <iostream>
#include <cassert>

uint64_t ant_recursive(int i, int j) {
    if(i == 1 or j == 1) return 1;
    else {
        return ant_recursive(i, j - 1) + ant_recursive(i-1, j);
    }
}


uint64_t ant_dynamic(int n, int m) {
    uint64_t result;
    uint64_t **K = new uint64_t*[n + 1];
    //memory allocation for K ffunction
    for(int i = 0; i <= n; i++) {
        K[i] = new uint64_t[m + 1];
    }
    //base cases:
    for(int i = 1; i <= n; i++) {
        K[i][1] = 1;
    }
    for(int i = 1; i <= m; i++) {
        K[1][i] = 1;
    }

    //recursive cases:
    for(int i = 2; i <= n; i++) {
        for(int j = 2; j <= m; j++) {
        K[i][j] = K[i - 1][j] + K[i][j - 1];
        }
    }

    result = K[n][m];
    
    for(int i = 0; i <= n; i++) {
        delete K[i];
    }
    delete[] K;
    return result;
}


int main() {
    uint64_t (*combinations)(int, int);
    int version = 0;
    std::cout << "Which version of function to use? (0 - recursive, 1 - dynamic):\n";
    std::cin >> version;
        if(version == 0) {
        combinations = ant_recursive;
    } else {
        combinations = ant_dynamic;
    }

    int i = 40;
    int j = 50;
    for(int i = 1; i <= 30; i++) {
        for(int j = 1; j <= 12; j++) {
            std::cout  << combinations(i, j) << "\t";
        }
        std::cout << "\n";
    }

    return 0;
}