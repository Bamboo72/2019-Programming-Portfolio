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
#include <iostream>
#include <string>
using namespace std;

// Global Variables
char name[50] = "TestName";
char pass[50];

// Centered String Function General-----------------------------------------
void centerstring(char* s) {
	int l = strlen(s);
	int pos = (int) ((80 - l) / 2);
	for (int i = 0; i < pos; i++) {
		cout << " ";
	}
	cout << s <<endl;
}

// Centered String Function for specific inputs-----------------------------
void centerlogin(char* s){
	int l = strlen(s);
			int pos = (int) ((71-l) / 2);
			for (int i = 0; i<pos; i++){
				cout << " ";
			}
}

//Startup Sequence----------------------------------------------------------
void startup(){
	centerstring("******************************BankTeller******************************");
	centerstring("Welcome to the virtual bank teller!");
	centerstring("Please enter your bank number or password.");
	centerstring("If you don't have an existing account, please press 'C' to make one.");
}

//Main----------------------------------------------------------------------
int main() {
	// Defining classes
	bankJAS bank;
	inter inter;
	calc calc;

	//Variables
	string input;

	bank.loading();
	// Initiate Startup
	startup();

	// Password input / Initiate Account Login
	cin >> input;
	if (input == "calc"){
		calc.run();
	} else if(input == "inter") {
		inter.run();
	} else {
		bank.run();
	}
	return 0;
}
