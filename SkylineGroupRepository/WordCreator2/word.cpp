// Author      : Nicholai Gontcharov
#include "WordH.h"
#include <iostream>
#include <ctime>
#include <string>
#include <stdlib.h>
#include <time.h>

using namespace std;

int randNum;
RootWord::RootWord() {

}

int RootWord:: randRoot() {
		int num;
		srand (time(NULL));
		num = rand() % 25;
		return 0;
	}

 string RootWord::Roots() {


	string root[10];

	root[0] = "multi";
	root[1] = "mal";
	root[2] = "bio";
	root[3] = "micro";
	root[4] = "hydro";
	root[5] = "logy";
	root[6] = "mono";
	root[7] = "aqua";
	root[8] = "auto";
	root[9] = "homo";

	return root [randNum];

}
 string RootWord::Definition(){

	 string def[10];

	 def[0] = "many";
	 def[1] = "bad";
	 def[2] = "life";
	 def[3] = "small";
	 def[4] = "water";
	 def[5] = "study of";
	 def[6] = "one";
	 def[7] = "water";
	 def[8] = "self";
	 def[9] = "same";

	 return def[randNum];
 }


