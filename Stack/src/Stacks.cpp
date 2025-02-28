#include <iostream>
#include "Stack.h"
using namespace std;

int main()
{
    Stack<int> stack;
    cout << "Calling stack.empty() gives: " << stack.empty() << endl;

    for (int i = 1; i <= 5; i++) {
        cout << "Pushing " << i * i << "..." << endl;
        stack.push(i * i);
    }

    cout << "Calling stack.empty() now gives: " << stack.empty() << endl;
    cout << "The top of the stack contains: " << stack.top() << endl;

    while (stack.empty() == false) {
        cout << "Popping " << stack.pop() << "..." << endl;
    }

    cout << "Calling stack.empty() after while loop gives: ";
    cout << stack.empty() << endl;

    return 0;
}