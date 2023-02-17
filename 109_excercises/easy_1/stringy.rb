def stringy(int)
  str = ''
  int.times do |num|
    if num.even?
      str += "1"
    else
      str += "0"
    end
  end
  str
end

def stringy(size)
  output = []
  size.times do |num|
    number = num.even? ? '1' : '0'
    output << number
  end
  output.join
end

=begin

LS approach has a clever use of the ternary opperator here, 
this coverts 5 lines worth of logic getes into a single line
they also choose to use an array as a storay device 
rather than the string but I dont think there's a big advantage
to their approach. 

My big take away here is that if I have an either/or 
logic gate, implement the ternary opperator. 


