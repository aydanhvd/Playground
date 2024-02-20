//
//  main.cpp
//  hellloWorld
//
//  Created by Aydan Haqverdili on 9/16/23.
//

#include <iostream>

int main() {
    int i = 223;
    int *p = &i;
    int **pp = &p;
    std::cout<<"ival is"<<std::endl
            <<"direct value using ival: "<< i <<std::endl
            <<"indirect value using *p: " << *p<<std::endl
            <<"double indirect value using **p: "<< **pp<<std::endl;
    
    return 0;
}


