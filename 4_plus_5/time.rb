# Timing Tests (Verifying binary_search is n*log(n))
require 'test/unit/assertions'
include Test::Unit::Assertions
require_relative "column_four"

def timing(n, tests)
   # Initialize array
   x = Array.new
   (0..n).each do |i|
     x[i] = i
   end

   # Time tests
   start = Time.now
   (0..tests-1).each do |t|
     (0..n-1).each {|i| assert(binary_search(i, x) == i)}
   end
   finish = Time.now - start
   p n, tests, finish*100, 100*(finish/tests)
   puts "---------------------------"
end


tests = [
  [100, 10000],
  [1000, 1000],
  [10000, 100],
  [100000, 10]
]

tests.each {|test| timing(test[0], test[1])}
