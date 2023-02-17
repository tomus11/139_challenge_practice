def prompt
  puts "What is the bill?"
  bill = gets.chomp.to_i

  puts "What is the tip percentage?"
  tip = (gets.chomp.to_f / 100)
  output(bill, tip)
end

def output(bill, tip)
  tip_dollars = bill * tip 
  puts "The tip is $#{tip_dollars}"
  puts "The total is $#{tip_dollars + bill}"
end

prompt

=begin
here I used a helper method `output` to handle the funtionality
of the output as well as calculate the tip amoutn. I suppose I could go
a step further and create a second helper method whose
sole function is to calculate the tip in dollars then pass that
tip in dollars amount to output. But this works just fine and
I think at some level, helper methods can over complicate a piece of code

=end