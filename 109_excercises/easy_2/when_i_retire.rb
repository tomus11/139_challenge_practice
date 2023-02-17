def prompt
  puts "What is your age?"
  age = gets.chomp.to_i

  puts "When would you like to retire?"
  retire = gets.chomp.to_i
  years_left = retire - age
  output(years_left)
end

def output(years_left)
  current_year = Time.new.year
  puts "It's #{current_year}. You will retire in #{current_year + years_left}."
  puts "You have only #{years_left} years of work to go!"
end

prompt

=begin

I have an aversion to creating objects from the Ruby standard
library that are not basic objects. But here, creating a new
time object is fairly intuitive and straight forward. initialize
a local variable to a new instance of the object, calling year on that
time object will return an int

=end