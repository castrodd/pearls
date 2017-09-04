#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <chrono>
#include <math.h>

// Program to time the speed of square root operations

float roots() {
  auto start = std::chrono::steady_clock::now();
  float fa = sqrt(10.0);
  auto end = std::chrono::steady_clock::now();
  // Store the time difference between start and end
  auto diff = end - start;
  return std::chrono::duration <float, std::milli> (diff).count();
}


int main(int argc, char *argv[]) {
   int i;
   float timer = 0;
   long arg = strtol(argv[1], NULL, 10);

   for (i = 0; i < arg; i++) {
      timer += roots();
   }

   std::cout << timer*1000.0 << " total" << std::endl;
   std::cout << (timer/arg)*1000.0 << " per run" << std::endl;

   return 0;
}
