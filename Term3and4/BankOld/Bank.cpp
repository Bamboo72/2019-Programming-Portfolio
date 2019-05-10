//============================================================================
// Name        : Bank.cpp
// Author      : Jacob Schwartz
// Version     :
// Copyright   : 
// Description : Hello World in C++, Ansi-style
//============================================================================
// Notes: I need to access the main file for the account details.
// The main needs variables for the balance
// Work on the date system
//csv files? get someone else to test the project on their comp

#include <iostream>
#include <string>
#include <cmath>
#include <fstream>
#include <ctime>
using namespace std;

string password = "Password2";

double balance = 0.00;
double scale = 0.01;
string input;
string deposit;
string withdraw;
string details;
string records;
double dDeposit;
double dWithdraw;
bool nameWritten = false;
bool on = true;
bool is_number(const string& s) {
	for (int i = 0; i < s.length(); i++) //for each char in string,
		if (!((s[i] >= '0' && s[i] <= '9') || (s[i] == ' ') || (s[i] == '.')))
			return false;
	//if s[i] is between '0' and '9' of if it's a whitespace (there may be some before and after
	// the number) it's ok. otherwise it isn't a number.

	return true;
}

int main() {

	time_t now = time(0);
						char* dt = ctime(&now);
						string date = dt;

		while (on == true) {

		cout << " Your balance is $" << balance << endl;
		cout
				<< " Would you like to make a deposit (1), withdrawal (2), view your history (3), or exit to the menu (4)? "
				<< endl;
		getline(cin, input);

		if (input == "1") {
			cout << "How much would you like to deposit? " << endl;
			getline(cin, deposit);

			if (is_number(deposit)) {

				dDeposit = stod(deposit);
				balance += dDeposit;
				balance = floor(balance / scale + 0.5) * scale;
				cout << "Would you like to add details to the record? (yes/no) "
						<< endl;
				getline(cin, input);
				if ((input == "yes") || (input == "y")) {
					cout << "Write it here or type Cancel" << endl;
					getline(cin, details);
					if (details == "cancel") {
						details = "";
					}

				}
			}

			ofstream outfile;
			outfile.open("Records.txt", ios::app);

			if (nameWritten == false) {
				outfile << endl;
				outfile << password << " ;" << endl;
				nameWritten = true;
			}
			outfile << dt << "Deposit: $" << dDeposit << ", " << details
					<< ", Balance: $" << balance << " ;" << endl;
			outfile << "~" << endl;
			outfile.close();
		}

		if (input == "2") {
			cout << "How much would you like to withdraw? " << endl;
			getline(cin, withdraw);

			if (is_number(withdraw)) {

				dWithdraw = stod(withdraw);
				balance -= dWithdraw;
				balance = floor(balance / scale + 0.5) * scale;
				cout << "Would you like to add details to the record? (yes/no) "
						<< endl;
				getline(cin, input);
				if ((input == "yes") || (input == "y")) {
					cout << "Write it here or type Cancel" << endl;
					getline(cin, details);
					if (details == "cancel") {
						details = "";
					}

				}
			}

			ofstream outfile;
			outfile.open("Records.txt", ios::app);

			if (nameWritten == false) {
				outfile << endl;
				outfile << password << " ;" << endl;
				nameWritten = true;
			}
			outfile << dt << "Withdrawal: $" << dWithdraw << ", " << details
					<< ", Balance: $" << balance << " ;" << endl;
			outfile << "~" << endl;

			outfile.close();

		}

		if (input == "3") {
			cout << "accessing files..." << endl;

			ifstream infile;
			infile.open("Records.txt", ios::in);

			while (records != password) {
				infile >> records;
			}
			cout << records;
			while (records != "~") {
				infile >> records;
				cout << " " << records;
				if (records == ";") {
					cout << endl;
				}
			}
			cout << endl;
			infile.close();
		}

		if (input == "4") {
			return 0;
		}

	}
}
