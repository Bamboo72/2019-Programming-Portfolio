// Zack Christiansen
// 3-12-19

#include <iostream>
#include <string>
#include "wordh.h"
#include "prefix.h"
#include "suffix.h"


using namespace std;

bool run = true;

int main() {
	while (run) {

		string cor;
		string prefix;
		string root;
		string suffix;
		string predef;
		string rootdef;
		string suffdef;
		
		RootWord root;
		Suffix suffix;
		Prefix prefix;
		

		cout << "Hello! Welcome to our random word creator. Please press the space bar to" << endl;
		cout << "generate a random word or press c to customize a word!" << endl;
		cin >> cor;
		if (cor == "c" || "C") {
			cout << "You have chosen to customize a word, now type your prefix" << endl;
			cin >> prefix;
			cout << "now type in its definition" << endl;
			cin >> predef;
			cout << "Now type your root word" << endl;
			cin >> root;
			cout << "now type in its definition" << endl;
			cin >> rootdef;
			cout << "Now type your suffix" << endl;
			cin >> suffix;
			cout << "now type in its definition" << endl;
			cin >> suffdef;

			cout << "Your word is " << prefix << root << suffix << endl;
			cout << "Definition: " << rootdef << " " << suffdef << " " << predef;
		}
		if (cor == " ") {
			cout << "The word is... " << endl;
			
			cout << prefix.Prefix() << root.Roots() << suffix.Suffix() << endl;
			
			cout << "The definition is... " << endl;
			
			cout << definition.Prefix() << root.Definition() << defiition.Suffix();
		}
	}
}
