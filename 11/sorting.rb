# Insertion Sort

def isort1(arr)
  for i in 1..arr.length-1
    j = i
    while j > 0 && arr[j-1] > arr[j]
      arr[j], arr[j-1] = arr[j-1], arr[j]
      j -= 1
    end
  end
  arr
end

def isort2(arr)
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

def isort3(arr)
  for i in 1..arr.length-1
    t = arr[i]
    j = i
    while j > 0 && arr[j-1] > t
      arr[j] = arr[j-1]
      j -= 1
    end
    arr[j] = t
  end
  arr
end

puts isort1([3,1,4,2]) == [1,2,3,4]
puts isort2([3,1,4,2]) == [1,2,3,4]
p isort3([3,1,4,2]) == [1,2,3,4]

puts isort1([6,3,1,5,4,2]) == [1,2,3,4,5,6]
puts isort2([6,3,1,5,4,2]) == [1,2,3,4,5,6]
puts isort3([6,3,1,5,4,2]) == [1,2,3,4,5,6]
