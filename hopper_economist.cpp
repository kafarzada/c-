#include <iostream>

int min_cost(int n, int price[]) {
    int cost[n +1];

    //base cases:
    cost[1] = price[1];
    cost[2] = price[1] + price[2];

    for(int i = 3; i <= n; i++) {
        //recuresive case
        cost[i] = std::min(cost[i - 1], cost[i - 2]) + price[i];
    }

    int current = n;
    std::cout << "Min cost path (reversed) = [";
    while(current != 1) {
        if(cost[current - 1] == cost[current] - price[current])
            current = current -1;
        else if (cost[current - 2] == cost[current] - price[current])
            current = current - 2;
        else throw -1; // I should never achive this line;

        std::cout << current << " ";
    }
    std::cout << "]\n";

    return cost[n];
}

int main() {
    int n;
    std::cout << "Hopper economist watns to go from point 1 to point n. enter n: \n";
    std::cin >> n;

    if(n > 100)  {
        std::cerr << "Your number is too big!~ maximum is 100.\n";
        return -1;
    }
    int price[n];
    std::cout << "Enter price of visiting point (from point to 1 to point n) \n";
    for(int i = 1; i <= n; i++) {
        std::cin >>price[i];
    }

    std::cout << "Min cost of achieving point b from point 1 is " << min_cost(n, price) ;

    return 0;
}