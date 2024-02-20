//
//  Person.cpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 1/28/24.
//

#include "Person.hpp"
#include <string>
#include <iostream>

std::string Person::getName() const {
    return name;
}

std::string Person::getAddress() const {
    return address;
}

std::iostream &print( std::iostream &is, const Person person) {
    is << person.getAddress() << person.getName() ;
    
    return is;
}
std::istream &write( std::istream &os, Person person ) {
    os >> person.name >> person.address;
    
    return os;
}
