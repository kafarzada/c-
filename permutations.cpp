#include <iostream>

int permustations(int16_t number, int16_t current, int16_t buffer[], bool used[]) {
    
    if(current == number) { // base case
        for(int i = 0; i < number; i++) {
            std::cout << buffer[i] << '\t';
        }
        std::cout << '\n';
    } else {//recuresive base
        for(int16_t variant = 0; variant < number; variant++) {
            if(not used[variant]) {
                buffer[current] = variant;
                used[variant] = true;
                permustations(number, current + 1, buffer, used);
                used[variant] = false;
            }
        }
    }
}




int main() {
    int16_t n;
    std::cout << "Enter length to generate all permutations: ";
    std::cin>> n;

    if(n > 10) {
        std::cerr << "your number is so big!: ";
        return 1;
    } else if(n <= 0 ) {
        return 1;
    }

    int16_t buffer[n];
    bool used[n] = {false};
    permustations(n, 0, buffer, used);
    return 0;
}