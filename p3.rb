def count_words(string)

## Worked with Luke Woodruff
## http://stackoverflow.com/questions/5128200/how-to-count-identical-string-elements-in-a-ruby-array

    stripped = string.downcase
    stripped = stripped.gsub(/[^a-zA-Z\ ]/, "")
    words = stripped.split
    counts = Hash.new(0)
    words.each { |word| counts[word] += 1 }
    puts counts
    return counts
end

=begin

## Test Code

count_words("A man, a plan, a canal -- Panama")
count_words("Abracadabra")
count_words("Doo bee doo bee doo")  
=end
