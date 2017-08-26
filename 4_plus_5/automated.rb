require_relative 'assertion'
require 'test/unit/assertions'
include Test::Unit::Assertions

# Automated Testing
x = Array.new

(0..1000).each do |n|
  print " n = ", n
  # test value

  # test distinct values
  (0..n).each do |i|
    x[i] = 10*i
  end
  (0..n-1).each do |i|
    assert(assertion_binary_search(10*i, x) == i)
    assert(assertion_binary_search(10*i - 5, x) == "Error: element not in array.")
  end
  assert(assertion_binary_search(10*n - 5, x) == "Error: element not in array.")
  
  (0..n-1).each do |i|
    x[i] = 10
  end
  if n == 0
    assert(assertion_binary_search(10, x) == "Error: element not in array.")
  else
    assert(0 <= assertion_binary_search(10, x) && assertion_binary_search(10, x) < n)
  end
  assert(assertion_binary_search(5, x) == "Error: element not in array.")
  assert(assertion_binary_search(15, x) == "Error: element not in array.")

end
