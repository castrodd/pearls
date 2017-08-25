require_relative 'column_one'

# Create a test file of 1000 integers and sort it with the bitmap function
# Then check if bitmap sort worked

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

  bitmap('sample_one')
end

m = main()

if m == m.sort
  puts "Worked"
else
  puts "Failed"
end
