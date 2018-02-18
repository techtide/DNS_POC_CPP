//
// Created by Arman on 18/02/2018.
//

#ifndef DONOTSTARVE_USERINPUT_H
#define DONOTSTARVE_USERINPUT_H
#include <string>
#include <iostream>

int askUserInput(std::string request) {
    std::string input;
    std::cout << request << " ";
    std::cin >> input;
    return std::stoi(input);
}

#endif //DONOTSTARVE_USERINPUT_H
