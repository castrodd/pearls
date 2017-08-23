# Precise Problem Statement
# Rotate an n-element vector x left by i positions in time proportional to n
# and with just a few dozen bytes of extra space.

def rotate(vector, spaces)
  vector[0..(spaces-1)] = vector[0..(spaces-1)].reverse!
  vector[spaces..(vector.length-1)] = vector[spaces..(vector.length-1)].reverse!
  vector.reverse!
end

def test_vector
  arr1 = ["a", "b", "c", "d", "e", "f", "g", "h"]
  res1 = rotate(arr1, 3)
  count = [0, 0]
  if res1 == ["d", "e", "f", "g", "h", "a", "b", "c"]
    count[0] += 1
    count[1] += 1
    puts "\nTest 1: Worked"
  else
    count[0] += 1
  end

  arr2 = ["a", "b", "c", "d", "e", "f", "g", "h"]
  res2 = rotate(arr2, 2)
  if res2 == ["c", "d", "e", "f", "g", "h", "a", "b"]
    count[0] += 1
    count[1] += 1
    puts "\nTest 2: Worked"
  else
    count[0] += 1
  end

  arr3 = ["a", "b", "c", "d", "e", "f", "g", "h"]
  res3 = rotate(arr3, 4)
  if res3 == ["e", "f", "g", "h", "a", "b", "c", "d"]
    count[0] += 1
    count[1] += 1
    puts "\nTest 3: Worked"
  else
    count[0] += 1
  end

  puts ''
  puts "#{count[0]} tests total: #{count[1]} passed, #{count[0] - count[1]} failed."
  puts ''
end

test_vector
