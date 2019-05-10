#include <iostream>
using namespace std;

int main() {
	for (int i = 99; i > 0; i--) {
		cout << i << " bottles of juice on the wall, " << i
				<< " bottles of juice. \n"
				<< "Take one down and pass it around, " << i - 1
				<< " bottles of juice on the wall. \n";
	}
	return 0;
}
