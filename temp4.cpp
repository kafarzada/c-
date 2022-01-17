/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.




Simple, given a string of words, return the length of the shortest word(s).
String will never be empty and you do not need to account for different data types.





In a factory a printer prints labels for boxes. The printer uses colors which, for the sake of simplicity, are named with letters from a to z (except letters u, w, x or z that are for errors).

The colors used by the printer are recorded in a control string. For example a control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a... and so on.

Sometimes there are problems: lack of colors, technical malfunction and a control string is produced e.g. uuaaaxbbbbyyhwawiwjjjwwxym where errors are reported with letters u, w, x or z.

You have to write a function hist which given a string will output the errors as a string representing a histogram of the encountered errors.

Format of the output string:

letter (error letters are sorted in alphabetical order) in a field of 2 characters, a white space, number of error for that letter in a field of 6, as many "*" as the number of errors for that letter and "\r" (or "\n" depending on the langauge).

The string has a length greater or equal to one and contains only letters from a to z.
*******************************************************************************/

#include <iostream>
#include <string>



using namespace std;
#include <iostream>
#include <string>


std::string hist(const std::string &s)
{
    int charCount[] = {0, 0, 0, 0};

    for(int i = 0; i < s.size(); i++) {
        if(s[i] == 'u') {
            charCount[0] += 1;
            continue;
        }
        if(s[i] == 'w') {
            charCount[1] += 1;
            continue;
        }
        if(s[i] == 'x') {
            charCount[2] += 1;
            continue;
        }
        if(s[i] == 'z') {
            charCount[3] += 1;
            continue;
        }
    }


  

    std::string u = charCount[0]  != 0 ?  "u  " + std::to_string(charCount[0])  + "     " +std::string (charCount[0], '*') :  "";
    std::string w = charCount[1] != 0 ?
    charCount[0] != 0 ?
     "\\rw  " + std::to_string(charCount[1]) + "     " +std::string (charCount[1], '*') :
    "w  " + std::to_string(charCount[1]) + "     " +std::string (charCount[1], '*') : "";

    std::string x = charCount[2] != 0 ?
    charCount[1] != 0 or charCount[0] != 0? 
    "\\rx  " + std::to_string(charCount[2]) + "     " +std::string (charCount[2], '*') :
    "x  " + std::to_string(charCount[2]) + "     " +std::string (charCount[2], '*'): "";

    std::string z = charCount[3] != 0 ?
        charCount[2] != 0 or charCount[1] != 0 or charCount[0] != 0 ? 
    "\\rz  " + std::to_string(charCount[3]) + "     " +std::string (charCount[3], '*') :
    "z  " + std::to_string(charCount[3]) + "     " +std::string (charCount[3], '*') : "";
    return u + w + x + z;
}



int main()
{
    int n[] = {0};
    std::string s = "dzqcfofwerkijhpzkcbompzokkqxvticzuhbjtkvsqkhnanrgcnwsvvzqpvlpoynppryycxchgwcvpkahhjwjkpzalmnncsqzswsqzqpwpzrqyxryrsxsswvuxquzpptqrqvvzrxuqswprrusvprsxqpwxsztpuxrsyxqvusppzrwquswqzsywrvpxty";
    cout << hist(s);
    return 0;
}
