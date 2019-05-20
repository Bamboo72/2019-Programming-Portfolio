/*
 * WordH.h
 *
 *  Created on: Mar 8, 2019
 *      Author: Nicholai Gontcharov
 */

#ifndef WORDH_H_
#define WORDH_H_
#include <string>
#include <stdlib.h>
#include <time.h>

class RootWord {
	public:
		RootWord();
		std::string Roots();
		std::string Definition();
		int randRoot();
	private:
};




#endif /* WORDH_H_ */
