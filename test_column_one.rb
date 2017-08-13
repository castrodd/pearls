require_relative 'column_one'

# Create a test file of 1000 integers and sort it with bitmap function

def randomize
  array = []
  (1..1000).each {|num| array.push(num)}
  array.shuffle!
end

def main
  r = randomize
  File.open('sample_one', 'w') do |f|
    r.each {|num| f.write(num); f.write("\n")}
  end

  b = bitmap('sample_one')

  if b == r.sort
    return "Worked"
  else
    return "Failed"
  end
end


p main()
