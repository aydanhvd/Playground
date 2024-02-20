//
//  Window_mgr.hpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 2/2/24.
//

#ifndef Window_mgr_hpp
#define Window_mgr_hpp

#include <stdio.h>
#include <vector>
#include "Screen.hpp"


class Window_mgr {
public:
    using ScreenIndex = std::vector<Screen>::size_type;
    void clear(ScreenIndex);
    ScreenIndex addScreen(const Screen &);
private:
    std::vector<Screen> screens { Screen( 24, 80, ' ')};
};

#endif

