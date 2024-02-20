//
//  main.cpp
//  Sales_data
//
//  Created by Aydan Haqverdili on 11/11/23.
//

#include <iostream>
#include <string>
#include "Sales_data.hpp"

struct Foo {  } ;

int main(int argc, const char * argv[]) {
    Sales_data data1, data2 ;
    double price = 0;
    std::cin >> data1.bookNo >> data1.units_sold >> price ;
    data1.revenue = data1.units_sold * price;
    std::cin >> data2.bookNo >> data2.units_sold >> price ;
    data2.revenue = data2.units_sold * price ;
    
    if ( data1.bookNo == data2.bookNo ) {
        unsigned totalCount = data1.units_sold + data2.units_sold ;
        double totalRevenue = data1.revenue + data2.revenue ;
        
        std::cout << data1.bookNo << " " << totalCount << " " << totalRevenue << " " ;
        
        if ( totalCount != 0 )
            std:: cout << totalRevenue/totalCount << std::endl;
        
        return  0;
    } else {
        std::cerr <<"Data must refer to the same ISBN" << std::endl;
        
        return -1;
    }
    
    return 0;
}
