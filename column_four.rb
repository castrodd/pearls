# Binary Search
# Given a sorted array, find the index of target element if in array. If not, report that error.

def binary_search(target, array)

  # Initialize low and high values
  min = 0
  max = array.length - 1

  # Loop through and reduce range
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
      return mid
    elsif target > array[min] && target < array[mid]
      max = mid
    elsif target > array[mid] && target < array[max]
      min = mid
    else
      return "Program error"
    end
  end
end


def test_binary_search()
  puts binary_search(5, [1,2,3,4,5]) == 4
  puts binary_search(5, [1,2,3,4,5,6,7,8,9,10]) == 4
  puts binary_search(5, [5,6,7,8,9,10]) == 0
  puts binary_search(5, [1,3,5,7,9,21]) == 2
  puts binary_search(5, [1,5,6,7,8]) == 1
  puts binary_search(5, [2,3,5,6]) == 2
end

test_binary_search