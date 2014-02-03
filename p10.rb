## Worked with Luke Woodruff

#part A
class String;
   def palindrome?
      lowercase = self.downcase.gsub(/[^a-zA-Z]/, '')
      return lowercase == lowercase.reverse
   end
end

#part B
module Enumerable
  def palindrome?
    a = to_a
    return a == a.reverse
  end
end

=begin

##Test Code

puts "Radar".palindrome?
puts "hi".palindrome?
puts [1,2,3,2,1].palindrome?
puts ['pups', 'pop', 'pops'].palindrome?
=end
