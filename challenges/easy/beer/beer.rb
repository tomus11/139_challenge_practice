=begin
write a program that prints verses to 99 bottles of beer on the wall

"3 bottles of beer on the wall, 3 bottles of beer.\n" \
      "Take one down and pass it around, 2 bottles of beer on the wall.\n
      
create a BeerSong class that has a class method called verse. verse takes one or two variables
the first is the first verse, the second marks the last
the program should print every verse in between.
if there's only one beer on the wall, then the program should print bottle not bottles

steps
create class
create verse(class method) that takes one arg with splat operator
  -if the array is size 1
    value 2 equals array value 1 minus 1
  -while value is greater than value 2
    -print ""
=end

class BeerSong
  def self.verse(*verse_number)
    current_verse = verse_number[0]
    final_verse = (verse_number.size == 1) ? (verse_number[0] - 1) : verse_number
    while current_verse > final_verse
      "\"#{current_verse} bottles of beer on the wall, #{current_verse} bottles of beer. \n" \
        "Take one down, pass it around, #{current_verse - 1} bottles of beer on the wall.\n" \
      "\n" \
      current_verse -= 1
    end
  end 
end
    
  