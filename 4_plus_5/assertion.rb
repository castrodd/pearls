# Binary Search w/ Assertion Testing
require 'test/unit/assertions'
include Test::Unit::Assertions

def sorted(array)
  (0..array.length-2).each do |index|
    if array[index] > array[index+1]
      return false
    end
  end
  return true
end



def assertion_binary_search(target, array)

  assert(sorted(array), "Array is not sorted.")

  # Check for empty array and one-element array
  if array.length == 0
    return "Error: element not in array."
  elsif array.length == 1 && array[0] != target
    return "Error: element not in array."
  elsif array.length == 1 && array[0] == target
    return 0
  end

  # Initialize low and high values
  min = 0
  max = array.length - 1

  # Initialize length of range
  size = array.length

  # Loop through and reduce range until target found or range is 0
  not_done = true
  while not_done
    mid = (max + min)/2
    if target < array[min] || target > array[max]
      return "Error: element not in array."
    elsif target == array[min]
      return min
    elsif target == array[max]
      return max
    elsif target == array[mid]
      assert(mid >= 0 && mid < array.length && array[mid] == target)
      return mid
    elsif max - min <= 1
      return "Error: element not in array."
    elsif target > array[min] && target < array[mid]
      max = mid
    elsif target > array[mid] && target < array[max]
      min = mid
    else
      return "Program error"
    end
    oldsize = size
    size = max - min
    assert(size < oldsize, "The range did not decrease.")
  end
end
