#ifndef FUNCS_HPP_
#define FUNCS_HPP_

#include <iostream>

using namespace std;



// argument b and argument a go onto stack (in that order) 
// a and b are added together
// returns an int
extern "C"{int addTwo(int a, int b);}
// argument b and argument a go onto stack (in that order)
// a and b are multiplied together
// returns an int
extern "C"{int multiplyTwo(int a, int b);}
//argument a goes onto stack 
// a is multiplied by itself
// returns and int
extern "C"{int pow2(int a);}
//array a and size of array a go onto stack (in that order)
 // gives the sum of all the values in array a
// returns an int
extern "C"{int addArray(int* a, int size);}
//array a and array b and size of arrays go onto stack (in that order) 
// stores the values of array a in array b in reverese order
// no return
extern "C"{void revArray(int* a, int* b, int size);}
//array a, array b, array c, and size of arrays go onto stack (in that order) 
// store the sum of array a and array b into array c
// no return
extern "C"{void addTwoArrays(int* a,int* b,int* c, int size);}

const int SIZE = 5;
#endif
