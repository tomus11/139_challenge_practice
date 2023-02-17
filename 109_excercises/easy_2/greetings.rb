def name?
  puts "What is your name?"
  name = gets.chomp
  reply(name)
end

def reply(name)
  response = "Hello #{name.chop}."
  if name.chars.include?("!")
    puts "#{response.upcase} WHY ARE WE SCREAMING?"
  else
    puts response
  end
end


name?

=begin
here, I learned that the chop method removes the final character from a string
this character can be alphnumeric or not. if the string ends with \r\n then both characters are removed. 