//
//  Link_screen.hpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 2/4/24.
//

#ifndef Link_screen_hpp
#define Link_screen_hpp

#include <stdio.h>
#include "Screen.hpp"

class Link_screen {
    Screen window;
    Link_screen *next;
    Link_screen *prev;
};

class Y;

class X {
    Y *yCoordinate;
};

class Y {
    X xCoordinate;
};

#endif /* Link_screen_hpp */
