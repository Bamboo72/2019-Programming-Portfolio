/*
 * suffix.h
 *
 *  Created on: Mar 6, 2019
 *      Author: Jacob Schwartz
 */

#ifndef SUFFIX_H_
#define SUFFIX_H_

#include "suffix.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>


class Suffix {
public:
	Suffix();
	int randomSuffix();
	std::string suffixSelect();
	std::string defSelect();
};

#endif /* SUFFIX_H_ */
