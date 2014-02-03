## Worked with Luke Woodruff

module Palindrome
  def palindrome?(string)

    stripped = string.downcase
    stripped = stripped.gsub(/[^a-zA-Z]/, '')
    reversed = stripped.reverse
    isSame = stripped==reversed
    puts isSame
    return isSame
    
  end
end

=begin

## Test Code

palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Abracadabra")   
=end
