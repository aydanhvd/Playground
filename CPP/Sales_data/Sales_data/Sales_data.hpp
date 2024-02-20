//
//  Sales_data.hpp
//  Sales_data
//
//  Created by Aydan Haqverdili on 11/11/23.
//

#ifndef Sales_data_hpp
#define Sales_data_hpp

#include <stdio.h>
#include <iostream>

struct Sales_data {
    std::string bookNo ;
    unsigned units_sold = 0 ;
    double revenue = 0.0 ;
};


#endif /* Sales_data_hpp */
