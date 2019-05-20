//============================================================================
// Name        : ReadSpecificLines.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <fstream>
using namespace std;

int main() {
	char text[50];
	int newbal = 50;
	fstream infile;
	infile.open("afile.dat");
	int pass, bal, account, accbal;
	account = 3;
	while (infile >> pass >> bal >> text && pass != account) {
		cout << "not this one" << endl;
	}
	infile.close();
	infile.open("afile.dat", ios::app);
	if (account == pass) {
		accbal = bal;
		cout << accbal << " " << text << endl;
		infile >> newbal;
	}
}
