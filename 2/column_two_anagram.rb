# Given a list of words, sort into classes of anagrams.

def anagrams(dictionary)
  classes = {}
  dictionary.map! do |word|
    current = word.chomp.chars.sort.join
    if classes[current]
      classes[current].concat([word])
    else
      classes[current] = [word]
    end
  end

  count = 1
  classes.keys.each_with_index do |group|
    if classes[group].length > 1
      puts "Group ##{count}"
      puts classes[group]
      puts "--------------------------------------"
      count += 1
    end
  end
end


def test_anagrams
  f = File.open('dictionary.txt', "r")
  dictionary = []

  f.each do |line|
    dictionary.concat([line])
  end

  anagrams(dictionary)
end

test_anagrams
