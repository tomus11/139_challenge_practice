def char_count
  puts "Please write word or multiple words:"
  str = gets.chomp
  chars = str.split('')
  chars.delete(' ')
  puts "There are #{chars.size} characters in \'#{str}\'"
end
char_count

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

=begin
The ls solution uses the String methods #delete and #size to find the value we're looking for.
These are two methods available to strings that are also available to arrays. 

=end
