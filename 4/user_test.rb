require_relative "column_four"

# On command line: ruby user_test.rb n t
# Creates an array with n length and searches for target t

inputs = ARGV

test_array = Array.new

(0..ARGV[0].to_i).each {|num| test_array << 10*num}

puts binary_search(ARGV[1].to_i, test_array)
