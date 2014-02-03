def combine_anagrams(words)

## Worked with Luke Woodruff
#http://stackoverflow.com/questions/9464065/how-to-sort-a-strings-characters-alphabetically
#http://stackoverflow.com/questions/7167634/ruby-anagram-solver

@words_hash = words.each_with_object(Hash.new []) do |word,hash|
  hash[word.chars.sort{ |a, b| a.casecmp(b) }.join.downcase] += [word]
  end
  @anagrams = @words_hash.values
  puts @anagrams.inspect
  return @anagrams
end

=begin

## Test Code

combine_anagrams(['Cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
=end
