/*
 * ShapeTester.cpp
 *
 *  Created on: Feb 12, 2019
 *      Author: 9643873
 */

#define _USE_MATH_DEFINES

#include <iostream>
#include <string>
#include <cmath>
#include <math.h>

using namespace std;

bool run = true;
string runAgain;
string input;
double volume = 0.0;
double sa = 0.0;
string inHeight;
string inLength;
string inWidth;
int height;
int length;
int width;

class Box {

public:
	double length;
	double width;
	double height;
};

class Sphere {

public:
	double radius;
};

class Pyramid {

public:
	double length;
	double width;
	double height;
};

int main() {
	while (run == true) {

		cout << " --Volume and Surface Area Finder--  " << endl;
		cout << " Would you like to do a (1) box, (2) sphere, or (3) pyramid? " << endl;
		getline(cin, input);

		if (input == "Box" || input == "box" || input == "1") {
			Box Box1;
			double volume = 0.0;

			cout << "What's the height?" << endl;
			getline(cin, inHeight);
			cout << "What's the length?" << endl;
			getline(cin, inLength);
			cout << "What's the width?" << endl;
			getline(cin, inWidth);

			height = stoi(inHeight);
			length = stoi(inLength);
			width = stoi(inWidth);

			Box1.height = height;
			Box1.length = length;
			Box1.width = width;

			volume = Box1.height * Box1.length * Box1.width;
			sa = 2
					* ((Box1.height * Box1.length) + (Box1.height * Box1.width)
							+ (Box1.length * Box1.width));
			cout << "The volume of the box is: " << volume << endl;
			cout << "The surface area of the box is: " << sa << endl;
		}

		if (input == "Sphere" || input == "sphere" || input == "2") {
			Box Sphere1;
			double volume = 0.0;

			cout << "What's the radius?" << endl;
			getline(cin, inWidth);

			width = stoi(inWidth);

			Sphere1.width = width;

			volume = (4 * M_PI / 3) * pow(Sphere1.width, 3);
			sa = 4 * M_PI * pow(Sphere1.width, 2);
			cout << "The volume of the sphere is: " << volume << endl;
			cout << "The surface area of the sphere is: " << sa << endl;
		}

		if (input == "Pyramid" || input == "pyramid" || input == "3") {
			Pyramid Pyramid1;
			double volume = 0.0;

			cout << "What's the height?" << endl;
			getline(cin, inHeight);
			cout << "What's the length?" << endl;
			getline(cin, inLength);
			cout << "What's the width?" << endl;
			getline(cin, inWidth);

			height = stoi(inHeight);
			length = stoi(inLength);
			width = stoi(inWidth);

			Pyramid1.height = height;
			Pyramid1.length = length;
			Pyramid1.width = width;

			volume = (Pyramid1.height * Pyramid1.length * Pyramid1.width) / 3;
			sa = Pyramid1.length * Pyramid1.width
					+ Pyramid1.length
							* sqrt(
									pow(Pyramid1.width / 2, 2)
											+ pow(Pyramid1.height, 2))
					+ Pyramid1.width
							* sqrt(
									pow(Pyramid1.length / 2, 2)
											+ pow(Pyramid1.height, 2));
			cout << "The volume of the pyramid is: " << volume << endl;
			cout << "The surface area of the pyramid is: " << sa << endl;
		}
		cout << "Do you want to do it again?" << endl;
		getline(cin, runAgain);

		if(runAgain == "Yes" || runAgain == "yes"){
			run = true;
		} else {
			run = false;
		}
	}
}

