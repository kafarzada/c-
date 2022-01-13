/*
    Factorial really should not be written with recursion
*/
#include <iostream>

using namespace std;

int64_t factorial(int16_t n) {
    int64_t result;
    cout << "factorial("<< n <<") is called with: " << n << endl;
    if(n == 0) {
        result =  1;
    } else {
        result =  factorial(n - 1) * n;
    }
    cout << "factorial(" << n << ") is exitting" << endl;
    return  result;
}


int main() {
    int16_t x;
    cin >> x;

    cout << factorial(x) << endl;
    return 0;
}