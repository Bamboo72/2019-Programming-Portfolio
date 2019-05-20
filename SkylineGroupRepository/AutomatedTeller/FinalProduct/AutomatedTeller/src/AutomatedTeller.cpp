//============================================================================
// Name        : AutomatedTeller.cpp
// Author      : B4CPP Seth McCullough
// Version     : 0.2
// Copyright   : Your copyright notice
// Description : Main Function for Automated Teller app.
//============================================================================

#include "bankJAS.cpp"
#include "Interest.cpp"
#include "Calc.cpp"
#include "passStore.cpp"
#include "adventure.cpp"
#include <iostream>
#include <string>
using namespace std;

// Global Variables
string user;
char pass[50];
int start;

// Centered String Function General-----------------------------------------[Not in use]
/*
 void centerstring(char* s) {
 int l = strlen(s);
 int pos = (int) ((80 - l) / 2);
 for (int i = 0; i < pos; i++) {
 cout << " ";
 }
 cout << s <<endl;
 }
 */
// Centered String Function for specific inputs-----------------------------[Not in use]
/*
 void centerlogin(char* s){
 int l = strlen(s);
 int pos = (int) ((71-l) / 2);
 for (int i = 0; i<pos; i++){
 cout << " ";
 }
 }
 */
//Startup Sequence----------------------------------------------------------
int startup() {
	cout << "==================\n    BankTeller    \n=================="
			<< endl;
	cout << "Welcome to the virtual bank teller!" << endl;
	cout << "What would you like to do?\n"
			<< "1. Bank Account\n2. Calculator\n3. Interest\n4. Adventure Game\n5. Quit"
			<< endl;
	cin >> start;
	return start;
}

//Main----------------------------------------------------------------------
int main() {
	bool run = true;
	// Defining classes
	bankJAS bank;
	inter inter;
	calc calc;
	passStore pstore;
	adventure adv;

	//Variables
	string input;
	// Startup
	while (run == true) {
		startup();
		if (start == 1) {
			user = pstore.run();
			bank.user = user;
			bank.run(user);
		} else if (start == 2) {
			calc.run();
		} else if (start == 3) {
			inter.run();
		} else if (start == 4) {
			adv.start();
		} else {
			run = false;
		}
	}
}

