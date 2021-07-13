//===================================================================================================================================== 
//Program Name: main.c                                                                                                      *
//Programming Language: c                                                                                                   *
//Program Description: .                                                                                                    *
//this function is the mian function and it will call the mananger in the funciotn                                          *                                                                            *
//Author: shaochen ren                                                                                                      *
//Email: renleo@csu.fullerton.edu                                                                                           *
//Institution: California State University, Fullerton                                                                       * 
//Course: CPSC 240-05                                                                                                       *
//Start Date: 20 September, 2020                                                                                            *
//Copyright (C) 2020 Shaochen Ren                                                                                           *
//This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License * 
//version 3 as published by the Free Software Foundation.                                                                   *
//This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        * 
//Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.    * 
//A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                          *
#include <stdio.h>
#include <stdint.h>

long int manager();
long int Read_clock();
int main()
{long int result_code = -999;
long int result_code1 = -999;
long int result_code2 = -999;
 result_code2 = Read_clock();
  printf("%s%ld\n","The time on CPU clock is now ",result_code2);
 result_code = manager();
 result_code1 = Read_clock();
 printf("%s%ld\n","the main will return 0  to the operating system.  bye ",result_code);
 printf("%s%ld\n","The time on CPU clock is now ",result_code1);
 return 0;
}//End of main
