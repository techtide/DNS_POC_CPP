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
    while (dayNumber <= MAX_DAYS_CHALLENGE) {
        runGameLoop();
    }
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
    if(option >= foodList.size()) {
        std::cout << "Unfortunately, no such option is present at the moment." << std::endl;
    } else {
        handleMealChoice(option);
    }
}

void handleMealChoice(int option) {
    Food *foodItem = &(foodList.at(option));
    dollars oldMoneyLeft = moneyLeft;
    moneyLeft = (moneyLeft - foodItem->price) > 0 ? moneyLeft - foodItem->price : moneyLeft;

    if(mealNumber > MAX_MEALS_DAY) {
        mealNumber=1;
        dayNumber+=1;
    } else {
        mealNumber+=1;
    }

    if (moneyLeft == oldMoneyLeft) {
        std::cout << "Sorry, at the moment, you cannot afford to buy this item." << std::endl;
    } else if (dayNumber > MAX_DAYS_CHALLENGE){
        std::cout << "You have passed the challenge, and have survived for " << MAX_MEALS_DAY << " days with " << calories
                  << " kcal and $" << moneyLeft << "left over." << std::endl;
    }
}

void displayMealOptions() {
    for(int i = 0; i < foodList.size(); i ++) {
        std::cout << i << ": " << foodList.at(i).name << "  "
                  << foodList.at(i).calories << "kcal" <<  "  " <<
                  "$" << foodList.at(i).price << std::endl;
    }
}

void displayStatistics() {
    std::cout << "Current Day: " << dayNumber << "    " << "Meal #: " << mealNumber <<  "    " << "Net Calories: "
              << calories << "    " << "Balance: $" << moneyLeft << "    " << std::endl;
}