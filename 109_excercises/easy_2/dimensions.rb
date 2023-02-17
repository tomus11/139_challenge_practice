class Room
  def initialize
    @length = prompt('length')
    @width = prompt('width')
    @area_meters = (@length * @width)
    @area_feet = @area_meters * 10.7639
    display
  end

  def display
    puts "The area of the room is #{@area_meters} square meters (#{@area_feet} square feet)."
  end

  def prompt(dimension)
    puts "Enter the #{dimension} of the room in meters:"
    gets.chomp.to_f
  end
end

Room.new

=begin

I created a custom object for the room that meets the requirements for  this problem. It shared characteristics to my previous object based solution. 
Mainly the initialize method contains all the method calls needed to write a funtioning solution.
=end
