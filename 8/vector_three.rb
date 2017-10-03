# Given an array of integers, find the maximum output of any subvector.
# Version 3 (O(n log n))

def maxsum(l, u, x)
  if l > u # Zero elements
    return 0
  end
  if l == u # One element
    return [0, x[l]].max
  end

  m = (l + u) / 2
  # Find max crossing to left
  lmax = 0
  sum = 0
  m.downto(l) do |i|
    sum += x[i]
    lmax = [lmax, sum].max
  end
  # Find max crossing to the right
  rmax = 0
  sum = 0
  for i in m+1..u
    sum += x[i]
    rmax = [rmax, sum].max
  end

  return [lmax+rmax, maxsum(l, m, x), maxsum(m+1, u, x)].max
end

p maxsum(0, 9, [31, -41, 59, 26, -53, 58, 97, -93, -23, 84]) == 187
