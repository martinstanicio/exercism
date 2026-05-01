#include "collatz_conjecture.h"

int steps(int number)
{
  if (number <= 0)
  {
    return -1;
  }

  int numberOfSteps = 0;

  while (number != 1)
  {
    numberOfSteps++;
    number = number % 2 == 0 ? number / 2 : number * 3 + 1;
  }

  return numberOfSteps;
}
