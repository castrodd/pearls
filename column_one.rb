# Precise Problem Statement
# Input: A file containing at most n positive integers, each less than n, where
# n = 10^7. It is a fatal error if any integer occurs twice in the input. No other data
# is associated with the integer.
# Output: A sorted list in increasing order of the input integers.
# Constraints: Roughly a megabyte of storage in main memory; run time can be at most
# several minutes.

def bitmap(input)

  f = File.open(input, "r")
  bit = [0]
  integers = []
  output = []

  # Phase 1: initialize set to empty
  f.each do |line|
    if line != '\n'
      bit.push(0)
      integers.push(line)
    end
  end


  # Phase 2: insert present elements into the set
  integers.each do |integer|
    integer = integer.to_i
    if bit[integer] == 1
      return false
    else
      bit[integer.to_i] = 1
    end
  end

  # Phase 3: write sorted output
  bit.each_with_index do |integer, index|
    if integer == 1
      output.push(index)
    end
  end

  f.close
  output
end
