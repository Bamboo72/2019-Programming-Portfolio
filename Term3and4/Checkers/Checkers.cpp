// Jacob Schwartz
// 3/14/19

#include <iostream>
#include <string>

using namespace std;

string input;
int rows = 9, cols = 9;

class YourPiece {
public:
	int ypx;
	int ypy;
};

int main() {


	YourPiece p1;
	p1.ypx = 8;
	p1.ypy = 1;
	YourPiece p2;
	p2.ypx = 8;
	p2.ypy = 3;
	YourPiece p3;
	p3.ypx = 8;
	p3.ypy = 5;
	YourPiece p4;
	p4.ypx = 8;
	p4.ypy = 7;
	YourPiece p5;
	p5.ypx = 7;
	p5.ypy = 2;
	YourPiece p6;
	p6.ypx = 7;
	p6.ypy = 4;
	YourPiece p7;
	p7.ypx = 7;
	p7.ypy = 6;
	YourPiece p8;
	p8.ypx = 7;
	p8.ypy = 8;
	YourPiece p9;
	p9.ypx = 6;
	p9.ypy = 1;
	YourPiece p10;
	p10.ypx = 6;
	p10.ypy = 3;
	YourPiece p11;
	p11.ypx = 6;
	p11.ypy = 5;
	YourPiece p12;
	p12.ypx = 6;
	p12.ypy = 7;

	for (int x = 0; x < rows; x++) {
		for (int y = 0; y < cols; y++) {
			//numbers
			if (x == 1 && y == 0) {
				cout << "8";
			} else if (x == 2 && y == 0) {
				cout << "7";
			} else if (x == 3 && y == 0) {
				cout << "6";
			} else if (x == 4 && y == 0) {
				cout << "5";
			} else if (x == 5 && y == 0) {
				cout << "4";
			} else if (x == 6 && y == 0) {
				cout << "3";
			} else if (x == 7 && y == 0) {
				cout << "2";
			} else if (x == 8 && y == 0) {
				cout << "1";
			}
			// letters
			else if (x == 0 && y == 1) {
				cout << "a ";
			} else if (x == 0 && y == 2) {
				cout << "b ";
			} else if (x == 0 && y == 3) {
				cout << "c ";
			} else if (x == 0 && y == 4) {
				cout << "d ";
			} else if (x == 0 && y == 5) {
				cout << "e ";
			} else if (x == 0 && y == 6) {
				cout << "f ";
			} else if (x == 0 && y == 7) {
				cout << "g ";
			} else if (x == 0 && y == 8) {
				cout << "h ";
			}
			// corner thing
			else if (x == 0 && y == 0) {
				cout << "* ";
			}
			// pieces
			else if (x == p1.ypx && y == p1.ypy) {
				cout << " •";
			} else if (x == p2.ypx && y == p2.ypy) {
				cout << " •";
			} else if (x == p3.ypx && y == p3.ypy) {
				cout << " •";
			} else if (x == p4.ypx && y == p4.ypy) {
				cout << " •";
			} else if (x == p5.ypx && y == p5.ypy) {
				cout << " •";
			} else if (x == p6.ypx && y == p6.ypy) {
				cout << " •";
			} else if (x == p7.ypx && y == p7.ypy) {
				cout << " •";
			} else if (x == p8.ypx && y == p8.ypy) {
				cout << " •";
			} else if (x == p9.ypx && y == p9.ypy) {
				cout << " •";
			} else if (x == p10.ypx && y == p10.ypy) {
				cout << " •";
			} else if (x == p11.ypx && y == p11.ypy) {
				cout << " •";
			} else if (x == p12.ypx && y == p12.ypy) {
				cout << " •";
			}

			else {
				cout << " □";
			}
		}

		cout << endl;
	}
	cout << "Your turn. What piece would you like to use? (letter then number) " << endl;
	//getline(cin, input);
	//cout << "Where would you like to move? (letter then number) " << endl;
}
