# Given an array of integers, find the maximum output of any subvector.
# Version 4 (O(n))

def vector(arr)
  maxsofar = 0
  maxendinghere = 0
  for i in 0..(arr.length-1)
    maxendinghere = [maxendinghere + arr[i], 0].max
    maxsofar = [maxsofar, maxendinghere].max
  end
  return maxsofar
end

p vector([31, -41, 59, 26, -53, 58, 97, -93, -23, 84]) == 187
