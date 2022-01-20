#include <iostream>

using namespace std;

bool solution(std::string const &str, std::string const &ending) {
    if(ending.size() == 0) return true;
 
    
    bool flag = true;
    int i = ending.size() - 1;
    while(i >= 0) {
        if(ending[ending.size() - 1 - i] != str[str.size() - i - 1]) {
          flag = false;
          break;
        }
      i--;
    }
  return flag;
}

int main() {

    cout << solution("abcde", "cde") << endl; // true
    cout << solution("abcde", "abc") << endl; // false
    cout << solution("abc", "") << endl; // true
    cout << solution("abc", "bc") << endl; // false
    cout << solution("abc", "d") << endl; // true

    return 0;   
}