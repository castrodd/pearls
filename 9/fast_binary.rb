# Taking classic binary search algorithm and tuning it for speed


def classic(target, array)
  l = 0
  u = array.length - 1
  while true
    if l > u
      return -1
    end
    m = (l + u) / 2
    if array[m] < target
      l = m + 1
    elsif array[m] == target
      return m
    else
      u = m - 1
    end
  end
end


def new_bin_one(target, array)
  l = -1
  u = array.length

  while l + 1 != u
    m = (l + u) / 2
    if array[m] < target
      l = m
    else
      u = m
    end
  end

  if u >= array.length || array[u] != target
    return -1
  end
  return u
end


def new_bin_two(target, array)
  # Specifically for an array of length 1000
  i = 512
  l = -1
  if array[511] < target
    l = 1000 - 512
  end
  while i != 1
    i = i / 2
    if array[l+i] < target
      l = l + i
    end
  end
  p = l+1
  if p > 1000 || array[p] != target
    return -1
  end
  return p
end


def new_bin_three(target, array)
  # Eliminates overhead of loop control and division of i by two
  l = -1
  if array[511] < target
    l = 1000 - 512
  end
  if array[l+256] < target
    l += 256
  end
  if array[l+128] < target
    l += 128
  end
  if array[l+64] < target
    l += 64
  end
  if array[l+32] < target
    l += 32
  end
  if array[l+16] < target
    l += 16
  end
  if array[l+8] < target
    l += 8
  end
  if array[l+4] < target
    l += 4
  end
  if array[l+2] < target
    l += 2
  end
  if array[l+1] < target
    l += 1
  end

  p = l+1
  if p > 1000 || array[p] != target
    return -1
  end
  return p
end

def time()
  [method(:classic), method(:new_bin_one), method(:new_bin_two)].each do |func|
    start = Time.now()
    10000.times {func.call(786, (1..1000).to_a)}
    puts func.to_s + ' ' + (Time.now() - start).to_s
  end
end


time()
