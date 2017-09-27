# Given an array of integers, find the maximum output of any subvector.
# Version 2b (O(n^2))

def vector(arr)
  cumarr = [0]
  n = arr.length - 1
  (0..n).each do |index|
    if index == 0
      cumarr[0] = arr[0]
    else
      cumarr[index] = cumarr[index - 1] + arr[index]
    end
  end
  maxsofar = 0
  (0..n).each do |i|
    (i..n).each do |j|
      if i > 0
        sum = cumarr[j] - cumarr[i-1]
      else
        sum = cumarr[j] - cumarr[0]
      end
      maxsofar = sum if sum > maxsofar
    end
  end
  maxsofar
end

p vector([31, -41, 59, 26, -53, 58, 97, -93, -23, 84]) == 187
