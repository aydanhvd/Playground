    //
    //  main.cpp
    //  StringsVectorsArrays
    //
    //  Created by Aydan Haqverdili on 11/13/23.
    //

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include "Chapter6.hpp"
#include "Sales_data.hpp"
#include "Screen.hpp"
#include "Window_mgr.hpp"
#include "Person.hpp"


using std::ofstream;
using std::ifstream;
using std::fstream;

int main(int argc, const char * argv[]) {
    std::string file1 = "file1.txt";
    std::string file2 = "file2.txt";
    ofstream out(file1); // out and trunc are implied
    ofstream out2(file1, ofstream::out); // trunc is implied
    ofstream out3(file1, ofstream::out | ofstream::trunc);
    //to preserve the file's contents we must explicitly specify app mode
    ofstream app(file2, ofstream::app);
    ofstream app2(file2, ofstream::out | ofstream::app);
    
    return  0;
}

