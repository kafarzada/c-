#include <iostream>

using namespace std;

void permutations(int16_t number, int16_t current, int16_t buffer[]) {
    if(current == number) { // base case
        for(int i = 0; i < number; i++) {
            cout << buffer[i] << '\t';
        }
        cout << endl;
    } else { //recursve case
        for(int variant = 0; variant < number; variant++) {
            buffer[current] = variant;
            permutations(number, current + 1, buffer);
        }
    }
}

int main() {

    int16_t n;
    cout << "Enter length to generate all permutations: ";
    if(n > 20) {
        cerr << "Your number is too big!";
        return 1;
    } else if(n <= 0) {
        cerr << "Your number is negative";
        return 1;
    } 
    cin >> n;
    int16_t buffer[n];
    permutations(n)

    return 0;
}