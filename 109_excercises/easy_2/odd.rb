(1..99).each do |num|
  puts num if num.odd?
end

1.upto(99) do |num|
  puts num if num.odd?
end

(1..99).to_a.select {|num| num.odd?}.each {|odd_num| puts odd_num}


=begin

here in the further exploration, I used the Integer#upto(number)
mmethod to control the interation. 

My initial solution used the Range#each.  then I 
created this rather sloppy one liner. 

=end