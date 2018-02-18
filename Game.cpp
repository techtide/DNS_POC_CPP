//
// Created by greenie on 18/02/2018.
//

#include <vector>
#include <getopt.h>
#include "UserInput.h"
#include "Game.h"

struct Food {
    std::string name;
    dollars price;
    int calories;
};

std::vector<Food> foodList;

void displayStatistics();
void displayMealOptions();
void formMealOptions();
void runGameLoop();
void handleMealChoice(int option);

int main() {
    formMealOptions();
    runGameLoop();
    return 0;
}

void formMealOptions() {
    Food food;
    food.name = "Diet Coke";
    food.calories = 100;
    food.price = 1.00;
    foodList.insert(foodList.begin(), food);
}

void runGameLoop() {
    displayStatistics();
    displayMealOptions();
    int option = askUserInput("What meal option would you like to pick, given your current circumstances?");
    if(option > foodList.size()) {
        std::cout << "Unfortunately, no such option is present at the moment." << std::endl;
    } else {
        handleMealChoice(option);
    }

    if(mealNumber > 3 && dayNumber < maxDaysForChallenge) {
        dayNumber += 1;
        mealNumber = 0;
        runGameLoop();
    } else if(calories > 0 && dayNumber < maxDaysForChallenge) {
        runGameLoop();
    } else {
        std::cout << "You have passed the challenge, and have survived for eight days with " << calories << " kcal and $" << moneyLeft <<
                  "left over." << std::endl;
    }
}

void handleMealChoice(int option) {
    Food foodItem = foodList.at(option);
    dollars oldMoneyLeft = moneyLeft;
    moneyLeft = (moneyLeft - foodItem.price) > 0 ? moneyLeft-foodItem.price : moneyLeft;
    if(moneyLeft == oldMoneyLeft) {
        std::cout << "Sorry, at the moment, you cannot afford to buy this item." << std::endl;
    } else {
        mealNumber += 1;
        runGameLoop();
    }
}

void displayMealOptions() {
    for(int i = 0; i < foodList.size(); i ++) {
        std::cout << i << ": " << foodList.at(i).name << "  "
                  << foodList.at(i).calories <<  "  " <<
                  "$" << foodList.at(i).price << std::endl;
    }
}

void displayStatistics() {
    std::cout << "Current Day: " << dayNumber << "    " << "Meal #: " << mealNumber <<  "    " << "Net Calories: "
              << calories << "    " << "Balance: $" << moneyLeft << "    " << std::endl;
}