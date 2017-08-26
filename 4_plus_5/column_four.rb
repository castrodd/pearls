# Binary Search
# Given a sorted array, find the index of target element if in array. If not, report that error.

def binary_search(target, array)

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
  end
end
