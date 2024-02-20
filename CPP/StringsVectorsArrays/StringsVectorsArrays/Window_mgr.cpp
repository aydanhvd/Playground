//
//  Window_mgr.cpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 2/2/24.
//

#include "Window_mgr.hpp"
#include <stdio.h>
#include <string>
#include "Screen.hpp"


void Window_mgr::clear(ScreenIndex i) {
    Screen &s = screens[i];
    s.contents = std::string(s.height * s.width, ' ');
}

Window_mgr::ScreenIndex Window_mgr::addScreen(const Screen &s) {
    screens.push_back(s);
    return screens.size() - 1;
}
