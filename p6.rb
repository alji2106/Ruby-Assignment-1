#!/usr/bin/ruby
# -*- coding: utf-8 -*-
#part 6

## Worked with Luke Woodruff
## https://docs.google.com/document/d/146gCqBlJZkalX0boNa38z7UagzVxvAw1fQGfvvnr6I8/edit

def glob_match(filenames, pattern)
  pattern = pattern.gsub(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
  regex = Regexp.new(pattern)
  filenames.select do |filename|
    filename =~ regex
  end
end

=begin

## Test Code

puts glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')
=end
