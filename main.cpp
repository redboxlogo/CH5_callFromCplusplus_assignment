// ; Program Description: fast array summation faster than what C++ can provide, 
// ;					 	so i call assembly functions

// ; Author: 				austin lew

// ; Creation Date: 		10/17/19

// ; Revisions: 

// ; Date: 10/17/19             Modified by:

// ; Operating System: linux mint

// ; IDE/Compiler: g++

#include <iostream>
#include "funcs.hpp"
using namespace std;

int main() {


	int arr1[SIZE]={9,8,5,6,7};										//initialize arrays
	int arr2[SIZE]={5,8,3,2,1};										//
	int arr3[SIZE];													//destination array uninitialized

	cout << "addTwo function: " << addTwo(4,6) << endl; 			//test addTwo() function

	cout << "multiplyTwo function: " << multiplyTwo(4,5) << endl; 	//test multiplyTwo() function

	cout << "pow2 function: " << pow2(SIZE) << endl; 				//test pow2() fucntion

	int arraytotal = addArray(arr1, SIZE); 							//define a variable using addArray()
	cout << "addArray function: "<< arraytotal << endl; 			//print the variable

	cout << "reversed contents of array 1 is: "; 					//revarray prompt
	revArray(arr1, arr3, SIZE);										//define revereds array using revArray()
	for(int i =0; i<SIZE; i++){ 									//forloop to traverse through array3 to print
		cout << arr3[i] << ", ";									//
	}																//
	cout << endl;
	cout << endl;

	cout << "array1 added to array2 is: ";							
	addTwoArrays(arr1,arr2,arr3, SIZE);								//define revereds array using revArray()
	for(int i=0; i<SIZE;i++){
		cout << arr3[i] << ", ";
	}
	cout << endl;
	cout << endl;

	


	cout << "program end!" << endl; 								// prints !!!Hello World!!!
	return 0;
}


// int main(){
// 	cout << "welcome to my addition program" << endl;
// 	int ret = addTwo(10,20);
// 	cout << "the addition of the two parameters is:" << ret << endl;
// 	return 0;
// }