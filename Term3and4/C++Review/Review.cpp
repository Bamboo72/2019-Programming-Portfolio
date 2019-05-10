/*
 * Review.cpp
 *
 *  Created on: Apr 16, 2019
 *      Author: Jacob Schwartz
 */

/*
#include <iostream>
#include <string>

using namespace std;

double int_f;
double int_c;
string input;

int main(){

	cout << "Enter in a number in degrees Fahrenheit" << endl;
	getline(cin,input);

	int_f = stod(input);
	int_c = (int_f - 32) * 5/9;

	cout << int_f << " degrees Fahrenheit is " << int_c << " degrees Celsius.";
	return int_c;

}
*/

/*
 1.1 Name  and explain 1 hardware term and 1 software term you are
LEAST familiar with.
ROM: ROM stands for Read Only Memory. You can't write on it, only
read from it. It is non-volatile.
The information is stored permanently in such memories during
manufacturing.
It stores instructions required to start a computer.
1.2 What does a breakpoint do?
A breakpoint is a pause or stopping point for a program to help when
debugging.
1.3 When debugging, what are you normally monitoring?
Errors in the code and variables.
1.4 What does it mean to step through an application?
To "step through" and application, you look at code up until the
breakpoint.
1.5 Describe and give an example of a syntax error.
Syntax errors are errors that occur when you violate the rules of
writing C/C++ syntax.
cout << "Hello World!" << endl
// missing semicolon after endl
1.6 Describe and give an example of a run-time error.
Run-time errors are errors that occur during program execution after
successful compilation.
#include <iostream>
using namespace std;
int x = 5;
int main(){
x =   x/0;
cout << x << endl;
}
// division by 0
1.7 Describe and give an example of a logic error.
Logic errors are errors that occur when a desired output is not
obtained when certain input values are given.
#include <iostream>
using namespace std;
int x = 5;
int main(){
for(int i = 0; i < 5; i++);
{
cout << i << endl;
}
}
// semicolon after loop
1.8 When an application is compiled, what is it changed to?
It is changed into computer code that the processor can use.
1.9 Name and describe the terms/concepts you are least familiar
with in Standard 1 (at least one).
Interpreted language: an interpreted language is a type of
programming language where most implementations execute instructions
directly and freely,without having to compile into machine code.
2.1 Name and give examples of 3 string literals in your language.
Text inside quotation marks. You can use things like \n.
\n for a new line
\b for backspace
\t for tab
2.2 Describe the difference between an operator and an operand.
Operators are special tokens that represent computations like addition, multiplication, and division.
 The values the operator works on are operands.
2.3 Write the line of code that constitutes your language entry point.
Where machine code starts to be read.
2.4 Name and describe what it means to plan an app including placeholders for named classes and functions/methods.
You think about everything the application needs to do, and use temporary placeholders
so you can test it without making the whole thing.
2.5 Write a method in your language that takes in a decimal and converts it from
Fahrenheit to Celsius and returns the new value.
#include <iostream>
#include <string>
using namespace std;
double int_f;
double int_c;
string input;
int main(){
cout << "Enter in a number in degrees Fahrenheit" << endl;
getline(cin,input);
int_f = stod(input);
int_c = (int_f - 32) * 5/9;
cout << int_f << " degrees Fahrenheit is " << int_c << "
degrees Celsius.";
return int_c;
}
2.6 Site a good and bad example of a number variable, a method name and a class name.
Good: x=1, void cat(){} , class person{}
Bad: abcdefghijklmnop=1, void unrelatedandlongcontent(){}, class lower_case{}
2.7 Site how single line comments and multiple line comments are accomplished in your language.
You use // for a single line comment and for a multiple line comment.
2.8 Name and describe the terms/concepts you are least familiar with in Standard 2 (at least one).
Entry point: an entry point is where machine code starts to be read. It’s almost never main(){} because there
is usually stuff before it.
3.1 Write a sample line of code naming and initializing each of your languages primitive data types.
#include <iostream>
using namespace std;
  bool c = 1;
 int a = 2;
 char b = '3';
  float d = 4;
 double e = 5;
 wchar_t f = 6;
int main()
{   cout << c << a << b << d << e << f << endl;
     return 0;
}

3.2 Write an line of code takes information from the user and assigns it to a named String variable.
#include <iostream>
#include <string>
using namespace std;
  string input;
int main()
{
   cout << "Type input here:" << endl;
  getline(cin, input);
  cout << "You typed: " << input << endl;
   return 0;
}

3.3 Write a line of code that casts a number as a String.
int = stoi(string);
3.4 List and describe all known operators in your language.
+ addition, - subtraction, * multiplication, / division, % modulus and remainder after division, ++ increment,
-- decrement,  and a lot of other operators… I’m not sure I should list all of them. These were all the arithmetic operators
3.5 Write a line of code setting a reference variable.
Int x = 5;
int& r = x;
3.6 Name and describe the terms/concepts you are least familiar with in Standard 3 (at least one).
Enumeration: an enumeration is a user defined data type with integer constants.
4.1 Site all of your languages logic operators.
! not, || or, (and) && and
4.2 Site all of your languages relational operators.
< less than, <= less than or equal to, >= greater than or equal to, > greater than, == equal to, != not equal to
4.3 Write a complex if statement checking “or” conditions.
Int i;
if( i > 4 || i < 4){}
4.4 Write an if else statement checking “and” conditions
if( i >= 4 && i != 5){}
4.5 Write a sample switch, case, default statement.
switch(1) {
    case 1 : cout << '1' << endl;
             Break;
           case 2 : cout << '2' << endl;
break;
}
4.6 Write a for loop that will print numbers 1-100 to console.
for(int i = 0; i < 101 ; i++){
            cout << i << endl;
    }
4.7 Write a sample while or do while statement.
Int i =0;
 while (i != 100){
        i++;
        cout << i << " ";
}
4.8 What is a nested loop; give example.
A nested loop is a loop inside another loop.
int i = 0;
    while (i != 100){
            for(int j=0; j<10; j++){
            cout << j << " ";
        }
        i++;
      cout << "*" << i << "*" << " ";
    }
4.9 Describe a strategy for keeping a running total in an app.
Use an if statement to increase the total by one when something happens.
4.10 Name and describe the terms/concepts you are least familiar with in Standard 4 (at least one).
Do-while loops: performs an action if the conditions in while are met

*/


