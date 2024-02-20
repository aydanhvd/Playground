//
//  Person.hpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 1/28/24.
//

#ifndef Person_hpp
#define Person_hpp

#include <stdio.h>
#include <string>

class Person {
  public:
    std::string name;
    std::string address;
    
    public:
    std::string getName() const;
    std::string getAddress() const;
};

std::iostream &print( std::iostream& , const Person);
std::istream &write( std::istream& , Person);
#endif /* Person_hpp */
