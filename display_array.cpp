//===================================================================================================================================== 
//Program Name: display_array.c                                                                                             *
//Programming Language: c++                                                                                                 *
//Program Description: .                                                                                                    *
//display_array is the funcitom to display the array that user input, it will be called in the manager file                 * 
//Author: shaochen Ren                                                                                                      *
//Email: renleo@csu.fullerton.edu                                                                                           *
//Institution: California State University, Fullerton                                                                       * 
//Course: CPSC 240-05                                                                                                       *
//Start Date: 20 September, 2020                                                                                            *
//Copyright (C) 2020 shaochen Ren                                                                                           *
//This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License * 
//version 3 as published by the Free Software Foundation.                                                                   *
//This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        * 
//Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.    * 
//A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                          *




#include <stdio.h>


extern "C" void display_array(long array[], long size);


void display_array(long array[], long size)

{

    for (long i = 0; i < size; i++)

    {

        printf("%ld", array[i]);

        printf("%s", " ");

    }

    printf("\n");

}
