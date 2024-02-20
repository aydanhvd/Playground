//
//  Sales_data.hpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 1/27/24.
//

#ifndef Sales_data_hpp
#define Sales_data_hpp

#include <stdio.h>
#include <string>
#include <iostream>


class Sales_data {
    
    friend Sales_data add(const Sales_data&, const Sales_data&);
    friend std::istream &read( std::istream&, Sales_data&);
    friend std::ostream &print(std::ostream&, const Sales_data&);
    
public:
    Sales_data(const std::string &s, unsigned n, double p): bookNo(s), units_sold(n), revenue(p*n) {}
    Sales_data(): Sales_data("", 0, 0) {}
    explicit Sales_data(std::string s): Sales_data(s, 0, 0) {}
    explicit Sales_data(std::istream &is): Sales_data() {
        read(is, *this);
    }
   
    std::string isbn() const { return bookNo;}
    Sales_data& combine(const Sales_data&);
    
private:
    double avg_price() const;
    std::string bookNo;
    unsigned int units_sold = 0;
    double revenue = 0.0;
};

Sales_data add( const Sales_data&, const Sales_data&);
std::ostream &print( std::ostream&, const Sales_data&);
std::istream &read(std::istream&, Sales_data&);

struct Data {
    int ival;
    std::string s;
};

class Debug {
public:
    constexpr Debug(bool b = true) : hw(b), io(b), other(b) {}
    constexpr Debug(bool h, bool i, bool o) : hw(h), io(i), other(o) {}
    
    constexpr bool any() { return hw || io || other;}
    void set_io(bool b) { io = b;}
    void set_hw(bool b) { hw = b;}
    void set_other(bool b) { other = b;}
    
private:
    bool hw;
    bool io;
    bool other;
};

class Account {
public:

    void calculate () {
        amount += amount * interestRate;
    }
    
    static double rate() {
        return interestRate;
    };
    static void rate(double);
private:
    static constexpr int period = 30;
    std::string owner;
    double amount;
    static double interestRate;
    static double initRate;
};

#endif
