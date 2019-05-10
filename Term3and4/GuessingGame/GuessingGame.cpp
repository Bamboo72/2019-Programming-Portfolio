#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sstream>

using namespace std;

int guess;

int main() {
	int random;
	int attempt = 0;
	//int guess;

	//initialize the random seed:
	srand(time(NULL));

	//generate the random number:
	random = rand() % 100 + 1;

	while (guess != random) {
		string test;
		cout << " - Guess the number (1 - 100): ";
		getline(cin, test);
		stringstream ss(test);
		ss >> guess;

		if (guess == random) {
			attempt++;
			cout << "Correct! The number was " << random << " It took you " << attempt << " tries.";
		} else {
			if (guess < random) {
				cout << "Nope. The number is greater than " << guess;
				attempt++;
			}
			if (guess > random) {
				cout << "Nope. The number is less than " << guess;
				attempt++;
			}
		}
	}

}
