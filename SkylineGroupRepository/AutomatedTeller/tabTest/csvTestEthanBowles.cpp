//Made by Ethan Bowles
//Around 1/2 finsished
//	-Getline
//	-Implement Encryption
//	-Save and grab users, passes and names

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

ofstream myFile("password.csv");

void savePass(string name, string user, string pass){

	myFile << name << ", " << user << ", " << pass;
	myFile.close();
}

string readFile(string user, string pass, string name){
	myFile.open("password.csv", ios::app);
	getline(myFile, name, user, pass);
	if(myFile.is_open()){
		string line1;


		if(line1==user){
					return user;
		}
	}
	while(myFile.good()){
			string line2;
			getline(myFile, line2,", ");
			if(line2==pass){
						return pass;
		}
	}
	myFile.close();
}

int main(){
	string a,b,c,user,pass;
	int d;
	cout << "Please choose to create an account or login" << endl;
	cout << "1. Create" << endl;
	cout << "2. Login" << endl;
	cin >> d;
	if(d==1){
		cout << "Enter your name: " << endl;
			cin >> a;
			cout << "Enter your username: " << endl;
			cin >> b;
			cout << "Enter your password: " << endl;
			cin >> c;
			savePass(a, b, c);
	}
	if(d==2){
		cout << "Please enter your username: " << endl;
		cin >> user;
		cout << "Please enter your password: " << endl;
		cin >> pass;
		readFile(user, pass);
	}
}

