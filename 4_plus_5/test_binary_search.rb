require_relative "column_four"
require_relative "assertion"

def test_binary_search()
  puts binary_search(5, [1,2,3,4,5]) == 4
  puts binary_search(5, [1,2,3,4,5,6,7,8,9,10]) == 4
  puts binary_search(5, [5,6,7,8,9,10]) == 0
  puts binary_search(5, [1,3,5,7,9,21]) == 2
  puts binary_search(5, [1,5,6,7,8]) == 1
  puts binary_search(5, [2,3,5,6]) == 2
  puts binary_search(5, [2,3,4,6,7,8]) == "Error: element not in array."
  puts binary_search(5, []) == "Error: element not in array."
  puts binary_search(5, [1]) == "Error: element not in array."
  puts binary_search(5, [5]) == 0
end

def test_assertion_binary_search()
  puts assertion_binary_search(5, [1,2,3,4,5]) == 4
  puts assertion_binary_search(5, [1,2,3,4,5,6,7,8,9,10]) == 4
  puts assertion_binary_search(5, [5,6,7,8,9,10]) == 0
  puts assertion_binary_search(5, [1,3,5,7,9,21]) == 2
  puts assertion_binary_search(5, [1,5,6,7,8]) == 1
  puts assertion_binary_search(5, [2,3,5,6]) == 2
  puts assertion_binary_search(5, [2,3,4,6,7,8]) == "Error: element not in array."
  puts assertion_binary_search(5, []) == "Error: element not in array."
  puts assertion_binary_search(5, [1]) == "Error: element not in array."
  puts assertion_binary_search(5, [5]) == 0
end

test_binary_search
test_assertion_binary_search
