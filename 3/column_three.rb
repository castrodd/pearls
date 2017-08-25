# Write a program that displays a 16-bit positive integer in five seven-segment digits.
# The output is an array of five bytes; bit i of byte j is one if and only if
# The ith segment of digit j should be on.

@representations = [ [1,1,1,1,1,1,1,0],
          [0,0,0,0,1,0,1,0],
          [1,1,1,0,1,1,0,0],
          [1,1,1,0,1,0,1,0],
          [0,1,0,1,1,0,1,0],
          [1,1,1,1,0,0,1,0],
          [1,1,1,1,0,1,1,0],
          [0,0,1,0,1,0,1,0],
          [1,1,1,1,1,1,1,0],
          [0,1,1,1,1,0,1,0] ]

def display(bits)
  display = []
  integers = bits.to_s.to_i(2).to_s
  integers.each_char { |num| display << @representations[num.to_i] }
  return display
end

p display(1010101010101010)
