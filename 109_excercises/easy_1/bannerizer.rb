def print_in_box(str)
  puts "+-" + "-" * str.size + "-+"
  puts "| " + " " * str.size + " |"
  puts "| #{str} |"
  puts "| " + " " * str.size + " |"
  puts "+-" + "-" * str.size + "-+"
end

def print_in_box(str)
  horizontal_cap = "+-" + "-" * str.size + "-+"
  vertical_line = "| " + " " * str.size + " |"
  
  puts horizontal_cap
  puts vertical_line
  puts "| #{str} |"
  puts vertical_line
  puts horizontal_cap
end


=begin

while the ls version of this code is a little longer, it is dryer. Since the horizontal and vertical lines are used repeatedly, It makes sense to store the 
value in a variable for multiple uses. 


This is simpler version of extracting a repeated piece of code into a method. 
=end
