text = '''
#include <iostream>

void index_func() {
    std::cout << "Hi! I am a function from index.h\\n";
    return;
}
'''
with open("index.h", 'w') as file:
    file.write(text)
