#include <iostream>
#include <string>
#include <fstream>

using namespace std;

class passStore{
private:
	string checkLog() {
		string name, us, ps, user, pass;
		char choice;
		cout << "------For Testing Login: Username Password------" << endl;
		cout << "Enter your username: " << endl;
		cin >> user;
		user = encryptDecrypt(user);
		cout << "Enter your password: " << endl;
		cin >> pass;
		pass = encryptDecrypt(pass);
		ifstream read("data\\" + user + ".txt");
		getline(read, us);
		getline(read, ps);
		getline(read, name);
		name = encryptDecrypt(name);

		if (user == us && pass == ps) {
			cout << "Welcome " + name << endl;

		} else {
			cout << "Your username and password is incorrect" << endl;
			checkLog();
			/*cout << "Would you like to try again?(Y/N)" << endl;
			cin >> choice;
			if ((choice == 'Y') ||(choice == 'y')) {
				checkLog();
			} else {
				read.close();
			}
			*/
		}
		return user;
	}

	void createAccount() {
		string name, user, pass;
		char choice;
		cout << "Please enter your first name: " << endl;
		cin >> name;
		cout << "Enter a username for your account: " << endl;
		cin >> user;
		cout << "Enter a password for your account: " << endl;
		cin >> pass;
		cout
				<< "Is this the info your wish to use:(Y/N) \n" + name + "\n"
						+ user + "\n" + pass << endl;
		cin >> choice;
		if ((choice == 'Y') ||(choice == 'y')) {
			user = encryptDecrypt(user);
			pass = encryptDecrypt(pass);
			name = encryptDecrypt(name);
			ofstream data("data\\" + user + ".txt");
			data << user << endl << pass << endl << name << endl;
			data.close();
			ofstream bal("bal\\" + user + ".txt");
			cout << "You are all good to go.\n" << endl;
			bal.close();
		} else {
			createAccount();
		}
	}

public:
	string encryptDecrypt(string toEncrypt) {
		char key[5] = { 'B', 'K', 'L', 'X', 'R' }; //Any char will work
		string output = toEncrypt;
		for (int i = 0; i < toEncrypt.size(); i++) {
			output[i] = toEncrypt[i] ^ key[0] ^ key[1] ^ key[2] ^ key[3]
					^ key[4] ^ 6;
			i++;
		}
		return output;
	}

	string run() {
		int choice;
		string user;
		cout << "Please choose one of the following (1/2)" << endl;
		cout << "1. Sign Up \n2. Login"<< endl;
		cin >> choice;
		if (choice == 1) {
			createAccount();
			cout << "Login:" << endl;
			user = checkLog();
		} else {
			user = checkLog();
		}
		return user;
	}
};
