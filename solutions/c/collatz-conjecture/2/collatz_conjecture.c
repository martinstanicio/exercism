#include "collatz_conjecture.h"

int steps(int start)
{
  if (start <= 0)
  {
    return ERROR_VALUE;
  }

  int number = start;
  int numberOfSteps = 0;

  while (number != 1)
  {
    numberOfSteps++;
    number = number % 2 == 0 ? number / 2 : number * 3 + 1;
  }

  return numberOfSteps;
}
