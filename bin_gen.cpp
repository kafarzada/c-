#include <iostream>
const int MAX_BINARY_DIGITS_TO_GENERATE = 100;

void generate_binary_numbers(int digits_left_to_generate) {
    static int digits_combination[MAX_BINARY_DIGITS_TO_GENERATE];
    static int top = 0;

    if(digits_left_to_generate == 0) { // base case
        for(int i = 0; i < top; i++) 
            std::cout << digits_combination[i];
        std::cout << std::endl;
    } else {
        digits_combination[top++] = 0;
        generate_binary_numbers(digits_left_to_generate - 1);
        top--;

        digits_combination[top++] = 1  ;
        generate_binary_numbers(digits_left_to_generate - 1);
        top--;

    }
}

int main() {
    generate_binary_numbers(n);
    return 0;
}