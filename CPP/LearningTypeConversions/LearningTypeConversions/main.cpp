//
//  main.cpp
//  LearningTypeConversions
//
//  Created by Aydan Haqverdili on 9/24/23.
//

#include <iostream>

class SizeGetable {
public:
    static int getSize(){
        return  8;
    }
};

int main(int argc, const char * argv[]) {
    int a = 3, b = 4;
    std:: cout << "a " << a <<std::endl;
    std:: cout << "b " << b <<std::endl;
    decltype(a) c = a;
    decltype( a = b ) d = a;
    ++c;
    ++d;
    std:: cout << "-------" <<std::endl;
    std:: cout << "a " << a <<std::endl;
    std:: cout << "b " << b <<std::endl;
    std:: cout << "c " << c  <<std::endl;
    std:: cout << "d " << d <<std::endl;
    
    return 0;
}
