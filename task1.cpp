#include <iostream>

/*
Учитывая положительное целое число n: 0 < n < 1e6, удаляйте последнюю цифру, пока не останется число, кратное трем.
Возврат n, если ввод уже кратен трем, и возврат, -1если такого числа не существует.
Примеры
1 => -1
25 => -1
36 => 36
1244 => 12
952406 => 9
*/

int prev_mult_of_three(int n) {
    if (n <= 0) 
        return -1;

    while(n != 0) {
        if(n % 3 == 0) {
            return n;
        }
        n /= 10; 
    }
    return -1;
}




int main() {

    int n;
    std::cin >> n;

    std::cout << prev_mult_of_three(n) << std::endl;
    return 0;
}