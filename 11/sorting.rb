# Insertion Sort

def isort1(arr)
  for i in 1..arr.length-1
    j = i
    while j > 0 && arr[j-1] > arr[j]
      t = arr[j]
      arr[j] = arr[j-1]
      arr[j-1] = t
      j -= 1
    end
  end
  arr
end

puts isort1([3,1,4,2]) == [1,2,3,4]
