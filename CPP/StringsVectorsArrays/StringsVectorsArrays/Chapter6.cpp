    //
    //  Chapter6.cpp
    //  StringsVectorsArrays
    //
    //  Created by Aydan Haqverdili on 1/12/24.
    //

#include <iostream>
#include <string>
#include <vector>

#include "Chapter6.hpp"

void printVector( std::vector<int> vector, std::string vectorName) {
    std::cout<<"<------------------------->"<< std::endl;
    std::cout<<"Now printing "<< vectorName << std::endl;
    std::cout<<"Size: "<< vector.size()<< std::endl;
    
    for (
         auto  i = 0;
         i< vector.size() && vector.size() >0;
         i ++
         ) {
             std::cout<<vector[i] << ", ";
         }
    
    std::cout<< std::endl;
}

void printVector( std::vector<std::string> vector, std::string vectorName) {
    std::cout<<"<------------------------->"<<  std::endl;
    std::cout<<"Now printing "<< vectorName << std::endl;
    std::cout<<"Size: "<< vector.size()<< std::endl;
    for (
         auto  i = 0;
         i< vector.size() && vector.size() > 0;
         i ++
         ) {
             std::cout<< vector[i] << ", ";
         }
    
    std::cout<< std::endl;
}

void print(std::string text) {
    std::cout<<text<< std::endl;
}

void print(const int ai[], size_t size) {
    for ( size_t i = 0; i != size ; ++ i) {
        std::cout << ai[i] << std::endl;
    }
}

void print( int (&arr)[10]) {
    for ( auto elem: arr) {
        std::cout << elem << std::endl;
    }
}

std::vector<int> garadeCounter( std::vector<int>garades) {
    std::vector<int> count(11, 0);
    for( auto i = 0; i < garades.size(); i++) {
        int grade = garades[i];
        int gradeIndex = grade/10;
        
        ++ count[gradeIndex];
    }
    return count;
}

std::vector<int> createRageVector(std::vector<int>::size_type size){
    std::vector<int> vector;
    for( auto i = 0; i <= size; ++ i) {
        vector.push_back(i);
    }
    return  vector;
}

std::string toUpper(std::string word) {
    for( auto & ch: word) {
        ch = toupper(ch);
    }
    return word;
}

std::vector<std::string> uppercase(std::vector<std::string> list) {
    for(
        auto index = 0;
        index < list.size() && list.size() > 0 ;
        index++
        ) {
            list[index] = toUpper(list[index]);
        }
    
    return list;
}

void printAdjacent(std::vector<int> vector) {
    for (
         auto i = 0;
         i < vector.size() &&  i+1 < vector.size() && vector.size() > 0 ;
         ++ i
         ){
             
             int nextIndex = i+1;
             int first = vector[i];
             int seccond = vector[nextIndex];
             
             int sum = first + seccond;
             std:: cout<<"Adjacent sum is "<<sum << std::endl;
         }
    std::cout<<"<---- end ---->"<<std::endl;
}

void printEndAdjacent(std::vector<int> list) {
    std::vector<int> reverseVector = list;
    reverse(reverseVector.begin(), reverseVector.end());
    for (
         auto i = 0;
         i < list.size() && list.size() > 0 ;
         ++ i
         ){
             int first = list[i];
             int last = reverseVector[i];
             int sum = first + last;
             std::cout<<"End adjacent sum is "<<sum << std::endl;
         }
    std::cout<<"<---- end ---->"<<std::endl;
}

std::string capitalize(std::string word) {
    if( word.begin() != word.end() ) {
        auto it = word.begin();
        *it = toupper(*it);
    }
    return word;
}
std::string capitalize2(std::string word) {
    for (auto it = word.begin(); it != word.end() && ! isspace(*it); ++ it) {
        *it = toupper(*it);
    }
    return word;
}

void printWithIterators(std::vector<int> list, std::string vectorName) {
    std::cout<<"Now printing "<< vectorName <<std:: endl;
    std::cout<<"Size: "<< list.size()<< std::endl;
    for ( auto it = list.cbegin(); it < list.end(); ++ it) {
        std::cout<< "Element " << *it << std::endl;
    }
    
    std:: cout<<"<---- end ---->"<<std::endl;
}

void print(const int *beg, const int *end) {
    while ( beg != end ) {
        std::cout <<*beg ++<<std::endl;
    }
}

std::vector<std::string> uppercaseParag(std::vector<std::string> text){
    for (auto it = text.begin(); it != text.cend() && !it->empty(); ++it) {
        *it = capitalize(*it) ;
    }
    return text;
}

void print(const char *cp) {
    if ( cp ) {
        while (*cp) {
            std::cout << *cp ++;
        }
    }
}

int doBinarySearch(std::vector<int> list , int sought) {
    auto begin = list.begin();
    auto end = list.end();
    auto mid = begin + ( end - begin) / 2 ;
    
    while( mid != end && *mid != sought) {
        if ( sought < *mid )
            end = mid;
        else
            begin = mid + 1;
        mid = begin + ( end - begin ) / 2 ;
    }
    return  *mid;
}

void adjacentSumIterators(std::vector<int> list) {
    for (
         auto iterator = list.begin();
         iterator != list.end() &&
         iterator + 1 != list.end();
         ++iterator
         ) {
             auto next = iterator + 1;
             int sum = *iterator + *next;
             
             std::cout << *iterator << " + "<< *next << " = " << sum <<std::endl;
         }
}

void adjacentSumIteratorsReverse(std::vector<int> list) {
    for (
         auto index = 0;
         index != list.size() / 2 ;
         ++index
         ) {
             auto first = list.begin() + index;
             auto last = list.end() - (index+ 1);
             int sum = *first + *last;
             
             std::cout << *first << " + "<< *last << " = " << sum <<std::endl;
         }
}

int getValue() {
    return  34;
}

std::vector<int> gradesWithIterator(std::vector<int> list) {
    std::vector<int> scores( 11, 0 );
    
    for( auto it = list.begin(); it != list.end(); ++it) {
        auto index = *it / 10;
        auto adress = scores.begin() + index ;
        (*adress)++;
    }
    
    return scores;
}

int txt_size() {
    return 10;
}

void printArray(const int list[], size_t size){
#ifdef NDEBUG
    std::cerr<<__func__<< "array size is " << size <<std::endl;
#endif
    
    if ( size < 2 ) {
        std::cerr<< "Error: " << __FILE__
        <<": in functiom " <<__func__
        <<" at line " << __LINE__
        << " at " << __TIME__ << std::endl
        << "    Word read was \"" << size
        << "\": Length too short " << std::endl;
    }
    
    for( auto index = 0 ; index < size; ++ index) {
        std::cout<< list[index] << std::endl;
    }
}

void interact() {
    int number;
    std::cout<< "Give me a number: " ;
    std:: cin>>number;
    int factorialNumber = factorial(number);
    std::cout<<"\n"<< number <<"! is "<< factorialNumber << std::endl;
}

int absolute( int value ) {
    return (value >= 0) ? value : -value;
}

size_t count_cas(){
    static size_t ctr = 0;
    return ++ctr;
}

std::vector<int> listGenerator() {
    static int number =  0;
    static std::vector<int>list = {};
    list.push_back(number);
    ++ number;
    
    return  list;
}

void reset(int &ip ) {
    ip = 0;
}

void reset( int *ip){
    ip = 0;
}

void swap(int *first , int *seccond) {
    int holder = *first;
    *first = *seccond;
    *seccond = holder;
}

void swap(int &first , int &seccond){
    int holder = first;
    first = seccond;
    seccond = holder;
}

bool isShorter(const std::string &s1, const std::string &s2) {
    return s1.size() < s2.size() ;
}

std::string::size_type finf_char( const std::string &s, char c, std::string::size_type &occurs) {
    auto ret = s.size();
    occurs = 0;
    for ( decltype(ret) i = 0; i != s.size() ; ++i) {
        if ( s[i] == c ) {
            if (ret == s.size()) {
                ret = i;
            }
            ++occurs;
        }
    }
    
    return ret;
}

bool is_sentence( const std::string &s) {
    std::string::size_type crt = 0;
    return  finf_char(s, '.', crt) == s.size() - 1 && crt == 1;
}


bool hasCapital(const std::string& text) {
    for (char ch : text){
        if ( isupper(ch) ){
            return  true;
        }
    }
    return  false;
}

void error_msg(std::initializer_list<std::string>il) {
    for (auto beg = il.begin(); beg != il.end(); ++beg) {
        std::cout<< *beg << " ";
    }
    std::cout << std::endl;
}

const std::string & shorterString( const std::string &s1, const std::string &s2) {
    return  s1.size() <= s2.size() ? s1 : s2;
}


std::vector<std::string>process () {
    std::string expected;
    std::string actual;
    if ( expected.empty())
        return {};
    else if ( expected == actual)
        return {"functionX", "okay"};
    else
        return {"functionX", expected, actual};
}

int factorial( int val) {
    if (val > 1)
        return factorial(val - 1) * val;
    return 1;
}


int &get(int *array, int index) {
    return array[index];
}

void recursivePrint(std::vector<std::string> &list, std::size_t index ) {
    if ( index == list.size()) {
        return;
    }
    
    std::cout << list[index] << std::endl;
    
    recursivePrint(list, index + 1);
}

int add(int val1, int val2) {
  return  val1 + val2;
}

int subtract( int val1 , int val2) {
    return val1 - val2;
}

int multiply( int val1 , int val2) {
    return val1 * val2;
}

int divide( int val1 , int val2) {
    return val1 / val2;
}

std::istream& read( std::istream &stream) {
    std::cout << "input values please" << std::endl;
    std::string text;
    while ( stream >> text  && !stream.eof()) {
        std::cout << text << std::endl;
    }
    stream.clear();
    return stream;
}
