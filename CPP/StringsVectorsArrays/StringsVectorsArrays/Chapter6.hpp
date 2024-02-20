#pragma once

#include <iostream>
#include <string>
#include <vector>


void print( std::vector<int> vector, std::string vectorName);

void print( std::vector<std::string> vector, std::string vectorName);

void print(std::string text);

void print(const char *cp);

void print(const int *beg, const int *end);

void print(const int ai[], size_t size);

void print(int (&arr)[10]);

void print(int matrix[][10], int rowSize);

void print( double );

std::vector<int> garadeCounter( std::vector<int>garades) ;

std::vector<int> createRageVector(std::vector<int>::size_type size);

std::string toUpper(std::string word) ;

std::vector<std::string> uppercase(std::vector<std::string> list) ;

void printAdjacent(std::vector<int> vector) ;

void printEndAdjacent(std::vector<int> list) ;

std::string capitalize(std::string word) ;

std::string capitalize2(std::string word) ;

void printWithIterators(std::vector<int> list, std::string vectorName);

std::vector<std::string> uppercaseParag(std::vector<std::string> text);

int doBinarySearch(std::vector<int> list , int sought) ;

void adjacentSumIterators(std::vector<int> list) ;

void adjacentSumIteratorsReverse(std::vector<int> list) ;

int getValue();

std::vector<int> gradesWithIterator(const std::vector<int>&list) ;

int txt_size() ;

void printArray(int list[], size_t size);

void interact() ;

int absolute( int value ) ;

size_t count_cas();

std::vector<int> listGenerator();

void print(std::vector<int>:: const_iterator beg, std::vector<int>::const_iterator end);

void reset(int &ip);

void reset( int *ip);

void swap(int *first , int *seccond);

void swap(int &first , int &seccond);

bool isShorter(const std::string &s1, const std::string &s2);

const std::string &shorterString( const std::string &s1, const std::string &s2);

std::string &shorterString(std::string s1, std::string s2);

std::string::size_type finf_char( const std::string &s, char c, std::string::size_type &occurs);

bool is_sentence( const std::string &s);

bool hasCapital(const std::string& text);

void error_msg(std::initializer_list<std::string>il);

bool str_subrange (const std::string &string1, const std::string &str2);

const std::string & shorterString( const std::string &s1, const std::string &s2);

std::vector<std::string>process ();

int factorial( int val);

int &get(int *array, int index);

void recursivePrint(std::vector<std::string> &list, std::size_t index = 0);

int (*func(int i))[10];

auto func2(int j) -> int(*)[10];

int ( *arrarPointer())[10];


std::string ( * arrayPointer( int cout)) [ 12];

auto autoPointer(int numbers) -> int (*) [19];

typedef std::string stringArr[10];
using arrayStringOfTen = std::string[12];

stringArr* typeDefVersion() ;

arrayStringOfTen * usingVersion(int numbers);

std::string(*againFunc( int list))[10];

auto againForTest(int numbers) -> std:: string (*)[19];

typedef int Record;
using Phone = int;
using Name = std::string;

Record lookup(const Phone&);
Record lookup(const Name&);

int calc ( int, int);
int calc ( const int , const int);

int get();
double *reset(double*);

std::string read();

typedef std::string::size_type stringSize;

std::string screen( stringSize ht = 24, stringSize wid = 80, char background = ' ');

using calculation = int (*) (int, int);

int add(int val1, int val2) ;

int subtract( int val1 , int val2);

int multiply( int val1 , int val2);

int divide( int val1 , int val2);

std::istream& read( std::istream &stream);
