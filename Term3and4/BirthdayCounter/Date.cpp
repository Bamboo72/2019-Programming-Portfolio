#include <iostream>
#include <stdlib.h>
#include <ctime>
#include <string>

using namespace std;

string month;
string day;
string year;

int main() {

	cout << " What MONTH were you born? (mm) ";
	getline(cin, month);
	int a = atoi(month.c_str());
	cout << " What DAY were you born? (dd) ";
	getline(cin, day);
	int b = atoi(day.c_str());
	cout << " What YEAR were you born? (yyyy) ";
	getline(cin, year);
	int c = atoi(year.c_str());

	int monthsecs = a * 2678400;
	int daysecs = b * 86400;
	int yearsecs = c * 31536000;

	int totalsecs = monthsecs + daysecs + yearsecs;

	cout << month << "/" << day << "/" << year << endl;

	time_t now = time(0);

int yourage = (now + (1970 * 31536000)) - totalsecs;
cout << yourage << endl;

int ageyears = yourage / 31536000;
int agemonths = (yourage % 31536000) / 2678400;
int agedays = (yourage % ((agemonths * 2678400) + ageyears * 31536000)) / 86400;
cout << "You have lived:" << endl;
cout << ageyears << " years" << endl;
cout << agemonths << " months" << endl;
cout << agedays << " days" << endl;
cout << "Nice job living for that long!" << endl;
}
