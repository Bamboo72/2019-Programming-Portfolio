#include <iostream>
#include <algorithm>
#include <string>

using namespace std;

string input;
string input1;
string input2;
string PigLatinSuffix = "ay";
string letterMove;
bool vowel = false;

int pos = input[0];
int len = input.length();

int main() {

	cout << " What do you want to translate?  ";
	getline(cin, input);

	transform(input.begin(), input.end(), input.begin(), ::tolower);

	/*
	bool space = input.find(" ");
	if (space) {
		input1 = input.substr(0,input.find(" "));
		pos = input.find(" ");
	}
*/

	// Test for all the digraphs:
if (input[0] == 'a' || input[0] == 'e' || input[0] == 'i' || input[0] == 'o' || input[0] == 'u') {
	letterMove = 'w';
	vowel = true;
	}

else if ((input[0] == 's' && input[1] == 'c' && input[2] == 'h')
			|| (input[0] == 's' && input[1] == 'c' && input[2] == 'r')
			|| (input[0] == 's' && input[1] == 'p' && input[2] == 'l')
			|| (input[0] == 's' && input[1] == 'p' && input[2] == 'r')
			|| (input[0] == 's' && input[1] == 'q' && input[2] == 'u')
			|| (input[0] == 's' && input[1] == 'c' && input[2] == 'r')
			|| (input[0] == 's' && input[1] == 't' && input[2] == 'r')
			|| (input[0] == 't' && input[1] == 'h' && input[2] == 'r')

			) {
		letterMove = input.substr(0, 3);
		input.erase(0, 3);
	}

else if ((input[0] == 's' && input[1] == 'h')
			|| (input[0] == 't' && input[1] == 'h')
			|| (input[0] == 'c' && input[1] == 'h')
			|| (input[0] == 'w' && input[1] == 'h')
			|| (input[0] == 'p' && input[1] == 'h')
			|| (input[0] == 'p' && input[1] == 'r')
			|| (input[0] == 'p' && input[1] == 'h')
			|| (input[0] == 'b' && input[1] == 'r')
			|| (input[0] == 'b' && input[1] == 'l')
			|| (input[0] == 'c' && input[1] == 'l')
			|| (input[0] == 'c' && input[1] == 'r')
			|| (input[0] == 'g' && input[1] == 'h')
			|| (input[0] == 'g' && input[1] == 'l')
			|| (input[0] == 'g' && input[1] == 'r')
			|| (input[0] == 'q' && input[1] == 'u')
			|| (input[0] == 's' && input[1] == 'c')
			|| (input[0] == 's' && input[1] == 'k')
			|| (input[0] == 's' && input[1] == 'p')
			|| (input[0] == 's' && input[1] == 'n')
			|| (input[0] == 's' && input[1] == 'm')
			|| (input[0] == 's' && input[1] == 't')
			|| (input[0] == 's' && input[1] == 'w')
			|| (input[0] == 't' && input[1] == 'r')
			|| (input[0] == 't' && input[1] == 'w')
			|| (input[0] == 'w' && input[1] == 'r')
			|| (input[0] == 'u' && input[1] == 'r')

			) {
		letterMove = input.substr(0, 2);
		input.erase(0, 2);

	} else {
		letterMove = input.substr(0, 1);
		input.erase(0, 1);
	}

if(vowel){
	cout << "We'll add a \"W\" "<< endl;
} else {
	cout << "We'll move " << letterMove << endl;
}

	cout << "Here's your word: " << input << letterMove << PigLatinSuffix
			<< endl;

}

