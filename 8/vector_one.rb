# Given an array of integers, find the maximum output of any subvector.
# Version 1

def subvector(arr)
  maxsofar = 0
  (0..arr.length-1).each do |index|
    (index..arr.length-1).each do |subindex|
      sum = 0
      (index..subindex).each do |ele|
        sum += arr[ele]
      end
      maxsofar = sum if sum > maxsofar
    end
  end
  maxsofar
end

p subvector([31, -41, 59, 26, -53, 58, 97, -93, -23, 84]) == 187
