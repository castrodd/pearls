#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <chrono>
#include <random>

// A program to test whether double numbers are slower to work with than floats

int dnumbers()
{
   double lower_bound = 0;
   double upper_bound = 10000;
   std::uniform_real_distribution<double> unif(lower_bound,upper_bound);
   std::default_random_engine re;
   double a_random_double = unif(re);

   return a_random_double;
}

int fnumbers()
{
   float lower_bound = 0;
   float upper_bound = 10000;
   std::uniform_real_distribution<float> unif(lower_bound,upper_bound);
   std::default_random_engine re;
   float a_random_float = unif(re);

   return a_random_float;
}

int main(void) {
  auto start = std::chrono::steady_clock::now();

  double one = dnumbers();
  double two = dnumbers();
  double three = dnumbers();

  double a = one + one;
  a -= two;
  a /= three;
  a *= a;

  auto end = std::chrono::steady_clock::now();
  // Store the time difference between start and end
  auto diff = end - start;
  std::cout << "Double time " << std::endl;
  std::cout << std::chrono::duration <float, std::milli> (diff).count()*1000 << " ns" << std::endl;


  auto starttwo = std::chrono::steady_clock::now();

  float onef = fnumbers();
  float twof = fnumbers();
  float threef = fnumbers();

  float af = onef + onef;
  af -= twof;
  af /= threef;
  af *= af;


  auto endtwo = std::chrono::steady_clock::now();
  // Store the time difference between start and end
  auto difftwo = endtwo - starttwo;
  std::cout << "Single time " << std::endl;
  std::cout << std::chrono::duration <float, std::milli> (difftwo).count()*1000 << " ns" << std::endl;

}
