def triangle(int)
  star_count = 1
  spaces = int
  until star_count > int
    puts (" " * (spaces - 1)) + ("*" * star_count)
    spaces -= 1
    star_count += 1
  end
end

def triangle(num)
  spaces = num - 1
  stars = 1
  
  num.times do |_|
    puts (" " * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

=begin 
my approach and ls approach are almost Identical however,
there's is a little cleaner in that it takes my logic 
for reducing the number of spaces by one and places it 
in the definition of the spaces variable. this is overall just cleaner to read

also important to note that I failed to ttore the spaces logic as a seperate variable on first pass
and instead tried to use the method parameter in my spaces logic.
this created an issue with the loop such that it endeded too early
I first solved this by playing with the logic on my until
until it worked. then I though to extract the spaces into a seperate variable

another thing ls did that I failed to do was use the times method for itteration.
using times elliminates the trouble of having to think
through the proper loop break logic. 

Thus, Identifying the fact that we'll output the same number of lines 
as the input number and using times was a logical step I
didn't consider. Using built in itterators should be go to unless unavoidable
=end