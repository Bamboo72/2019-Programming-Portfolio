#include <iostream>
#include <string>
#include <ctime>


using namespace std;
int num;

suffix::suffix() {

}



int suffix::randomSuffix() {
	srand(time(NULL));
	num = rand() % 10;
	return 0;
}

void suffixSelect() {
string suffixes [10];


//suffixes[0] = "en"
//suffixes[1] = "ful"
//suffixes[2] = "est"
//suffixes[3] = "ness"
//suffixes[4] = "er"
//suffixes[5] = "ment"
//suffixes[6] = "less"
//suffixes[7] = "y"
//suffixes[8] = "s"
//suffixes[9] = "ic"

return suffixes[num]

}

string suffix::defSelect() {
string defs[10];

defs[0] = "made of";
defs[1] = "full of";
defs[2] = "comparative";
defs[3] = "state of, condition of";
defs[4] = "comparative";
defs[5] = "action or process";
defs[6] = "without";
defs[7] = "characterized by";
defs[8] = "more than one";
defs[9] = "having characteristic of";
}
