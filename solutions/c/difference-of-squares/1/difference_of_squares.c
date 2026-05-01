#include "difference_of_squares.h"
#include <stddef.h>

unsigned int sum_of_squares(unsigned int number)
{
  unsigned int result = 0;

  for (size_t i = 1; i <= number; i++)
  {
    result += i * i;
  }

  return result;
}

unsigned int square_of_sum(unsigned int number)
{
  unsigned int sum = 0;

  for (size_t i = 1; i <= number; i++)
  {
    sum += i;
  }

  return sum * sum;
}

unsigned int difference_of_squares(unsigned int number)
{
  return square_of_sum(number) - sum_of_squares(number);
}
