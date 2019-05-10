/*
 * extra.cpp
 *
 *  Created on: Apr 10, 2019
 *      Author: 9643873
 */


#include <iostream>
#include <ctime>

using namespace std;


int main(){
	time_t now = time(0);

	char* dt = ctime(&now);

	cout << "The current time and date is: " << dt << endl;

}


