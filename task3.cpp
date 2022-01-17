/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.




Simple, given a string of words, return the length of the shortest word(s).
String will never be empty and you do not need to account for different data types.
*******************************************************************************/

#include <iostream>
#include <string>
#include <list>

int  find_short(std::string str)
{
    int prev_pos = 0;
    std::list<int> sizes = {};
    for(int i = 0; i < str.size(); i++) {
    
        if(str[i] == ' ') {
            int length = 0;
            for(int y = prev_pos; y < i; y++) {
                length += 1;
            }
            sizes.push_front(length);
            prev_pos = i + 1;
        }
        
        if(i == str.size() - 1) {
            int l = 0;
            for(int y = i; y >= prev_pos; y--) {
                l += 1;
            }
            sizes.push_front(l);
        }
    
    }  
    
    int min = sizes.front();
    for (int n : sizes)
        if(n < min) {
            min = n;
        }
    return min;
  
}
using namespace std;

int main()
{


    return 0;
}
