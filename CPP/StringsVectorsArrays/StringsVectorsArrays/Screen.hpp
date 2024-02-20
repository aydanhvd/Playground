//
//  Screen.hpp
//  StringsVectorsArrays
//
//  Created by Aydan Haqverdili on 1/31/24.
//

#ifndef Screen_hpp
#define Screen_hpp

#include <stdio.h>
#include <iostream>
#include <string>

class Screen {
    friend class Window_mgr;
    friend std::ostream& storeOn( std::ostream & , Screen &);
public:
    typedef std::string::size_type pos;

    Screen() = default;
    Screen( pos ht, pos wd, char c) : height(ht), width(wd), contents(ht * wd , c ) {}
    void definitelyDoesSomething() const;
    char get() const {
        return  contents[cursor];
    }
    
    
    inline char get( pos ht, pos wd) const;
    Screen &move(pos r, pos c);
    Screen &set(char);
    Screen &set(pos, pos, char);
    Screen &display ( std::ostream &os) {
        do_display(os);
        return *this;
    }
    const Screen &display(std::ostream &os) const {
        do_display(os);
        return *this;
    }
    
    pos size() const ;
private:
    mutable size_t access_crt;
    pos cursor = 0;
    pos height = 0, width = 0;
    std::string contents;
    void do_display(std::ostream &os) const {
        os << contents;
    };
    
};

extern std::ostream& storeOn( std::ostream & , Screen &);
extern Screen storeOn( Screen & );

#endif /* Screen_hpp */
