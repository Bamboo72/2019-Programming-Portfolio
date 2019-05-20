//Mason Rasmussen
//03/8/19
#include <iostream>
#include <ctime>
#include <string>
using namespace std;

int main() {
	//
	int a;
	string prefix, prefixDef;
	//
	srand((int) time(0));
	//
	string pre[] = { "pre", "en", "mid", "de", "under", "non", "super","in", "anti", "fore" };
	string predef[] = {"before ","cause to ","middle ","opposite ","under ","above ","in ","against ","before "};
	//
	a = rand() % 10;


	cout << pre[a];
	prefix = pre[a];
	prefixDef = predef[a];

	return 0;
}
