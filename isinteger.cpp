//***************************************************************************************************************************
//Program name: "Validate Integer Input".  This program demonstrates how to validate input received from scanf as valid      *
//integer data.  Copyright (C) 2020 Floyd Holliday                                                                           *
//This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
//version 3 as published by the Free Software Foundation.                                                                    *
//This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied         *
//warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
//A copy of the GNU General Public License v3 is available here:  <https:;www.gnu.org/licenses/>.                            *
//****************************************************************************************************************************


#include <iostream>
#include <cstring>
using namespace std;
extern "C" bool isinteger(char w[]);
bool isinteger(char w[])
{bool result = true; //Assume true until proven otherwise.
 int start = 0;
 if (w[0] == '-' || w[0] == '+') start = 1;
 unsigned long int k = start;
 while( !(w[k]=='\0') && result )
     {result = result && isdigit(w[k]);
      k++;
     }
 return result;
}//End of isInteger
