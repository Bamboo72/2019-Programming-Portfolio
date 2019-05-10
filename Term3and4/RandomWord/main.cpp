// Jacob Schwartz B4
// Made 3/6/19

#include "suffix.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
using namespace std;

int main(){
	Suffix suffix;

suffix.randomSuffix();
cout << 	suffix.suffixSelect() << " " << suffix.defSelect();
}
