//
//  Screen.cpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 1/31/24.
//

#include "Screen.hpp"

inline
Screen & Screen::move(pos r, pos c) {
    pos row = r * width;
    cursor = row + c;
    
    return *this;
}

char Screen::get(pos r, pos c ) const {
    pos row = r * width;
    return  contents[row + c];
}

void Screen::definitelyDoesSomething() const {
    ++access_crt;
}

inline Screen & Screen::set(char c) {
    contents[cursor] = c;
    return *this;
}

inline Screen & Screen::set( pos r, pos col, char ch ) {
    contents[r*width + col] = ch;
    return *this;
}

Screen::pos Screen::size() const {
    return height * width;
}
