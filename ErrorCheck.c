#include<stdio.h>
int main(){
char *a = "India";
char b[] = "India";
a = a+1;//line 5 -- it will execute since in this case, a is being incremented to point to the second character in the string "India".
b = b+1;//line 6 --would result in a compilation error because `b` is an array and cannot be assigned a new value.
}

// Detailed explanation for the error :


//The line that will show an error is line 6: b = b + 1;

// The reason for this error is that b is an array, and in C, you cannot assign a new value to an array name. 
//Arrays are non-modifiable lvalues, meaning they cannot appear on the left side of an assignment operator
//When you declare an array like char b[] = "India";, you're creating an array of characters and initializing it with the string "India". 
//Arrays in C are treated as pointers to their first element, but they are not modifiable lvalues.
