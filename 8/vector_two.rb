# Given an array of integers, find the maximum output of any subvector.
# Version 2 (O(n^2))

def vector(arr)
  maxsofar = 0
  n = arr.length - 1
  (0..n).each do |index|
    sum = 0
    (index..n).each do |subindex|
      sum += arr[subindex]
      maxsofar = sum if sum > maxsofar
    end
  end
  maxsofar
end

p vector([31, -41, 59, 26, -53, 58, 97, -93, -23, 84]) == 187
