=begin
write a program with a class `BeerSong` that has one class method `verse` verse takes two args: verse to start, verse to end.
ending verse should be initialized to by default equal the start verse. 

we have three stock messages:
else = "x bottles of beer on the wall, x bottles of beer.\n" \
      "Take one down and pass it around, x - 1 bottle of beer on the wall.\n" \
      "\n" \
one = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n" \
      "\n" \
zero = "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      
I gave up on my solution here... so I'm going to analyze the launch school solution

first we create the Verse class that takes one parameter at instantiation. 
This parameter is used to output one verse. The implementation of multiple verses is controlled 
within a while loop in the verses method of the BeerSong group. This method calls the
single_verse method within the Verse class.

the single_verse method uses a case statement based on the value of bottles and the calls
the appropriate private verse method. zero, single, two bottle, and default verse. 
These methods return the verses in strings. The reason why we need four unique methods
is in the slight differences of the zero, one, and two bottle verses compared to the
default verse.
=end

class Verse
  attr_reader :bottles
  
  def initialize(bottles)
    @bottles = bottles
  end
  
  def single_verse
    case bottles
    when 0
      zero_bottle_verse
    when 1
      single_bottle_verse
    when 2
      two_bottle_verse
    else
      default_verse
    end
  end
  
  private

  def default_verse
    "#{bottles} bottles of beer on the wall, #{bottles}" +
    " bottles of beer.\nTake one down and pass it around, " +
    "#{bottles-1} bottles of beer on the wall.\n"
  end

  def two_bottle_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" +
    "Take one down and pass it around, 1 bottle of beer " +
    "on the wall.\n"
  end

  def single_bottle_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer " +
    "on the wall.\n"
  end

  def zero_bottle_verse
    "No more bottles of beer on the wall, no more bottles " +
    "of beer.\nGo to the store and buy some more, 99 bottles " +
    "of beer on the wall.\n"
  end
end

class BeerSong
  def self.verse(number)
    Verse.new(number).single_verse
  end
  
  def self.verses(start, stop)
    current_verse = start
    result = []
    
    while current_verse >= stop
      result << "#{verse(current_verse)}"
      current_verse -= 1
    end
    
    result.join("\n")
  end
  
  def self.lyrics
    verses(99,0)
  end
end

