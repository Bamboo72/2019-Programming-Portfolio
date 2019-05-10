/*
 * RandomQuestions.cpp
 *
 *  Created on: Feb 22, 2019
 *      Author: 9643873
 */

#include <iostream>
#include <fstream>

using namespace std;

string data;
string name;

int main() {

	ofstream outfile;
	outfile.open("Questions.txt", ios::app);

	cout << "Welcome to Deep Questions with this program!" << endl;
	cout << "Enter your name: ";
	outfile << "      This person's name was: ";
	getline(cin, data);
    name = data;
	outfile << data << endl;

	cout << "You will now be asked 10 questions." << endl;
	cout << "How are you feeling today? ";
	outfile << "How are you feeling today? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "What did you have for breakfast? ";
	outfile << "What did you have for breakfast? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "What is on your mind right now? ";
	outfile << "What is on your mind right now? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "Is that thought worth your time? ";
	outfile << "Is that thought worth thinking? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "Who is someone you admire? ";
	outfile << "Who is someone you admire? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "How could you be like them more? ";
	outfile << "How could you be like that person more? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "Will you actually do that? ";
	outfile << "Will you actually do that? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "Is your life too busy? ";
	outfile << "Is your life too busy? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "Should you be more or less busy? ";
	outfile << "Do you want to be more or less busy? " << endl;
	getline(cin, data);

	outfile << data << endl;

	cout << "Were these questions constructive or a waste of time? ";
	outfile << "Were these questions constructive or a waste of time? " << endl;
	getline(cin, data);

	outfile << data << endl;

	outfile.close();

	cout << "Thank you for participating " << name << "." << endl;
	cout << "Your answers will be recorded..." << endl;

}

