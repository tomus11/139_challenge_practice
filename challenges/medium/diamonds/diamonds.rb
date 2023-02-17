=begin

Write a class that has a class method that takes one argument, an uppercase letter. and converts it into a diamond of all the letters up to that point
in the alphabet. 

diamond always starts at A and goes through to the given letter
If A ia given it simply returns one A
otherwise there will be one A on top and one A on bottom. 

There is a relationship between the input letter's place in the alphabet and the number of spaces between letters. 

    A(to left:4, character in ceter)
   B B(to left: 3, char, center:1 space, char)
  C   C(to left: 2, center:3 space)
 D     D(to left: 1, center:5 spaces)
E       E (center:7 spaces)
 D     D
  C   C
   B B
    A
    
  A
 B B
C   C

The number of spaces before the first A is a function of the number of spaces required for
the middle letter, the highest letter in the sequence.
number of spaces for center letter is equal to 1 + (2 * the distance in alphabet from "B") or the size of the slice of the letters array from b to the current letter * 2

number of spaces required to the left is equal to distance from current index to the letter just before the the final letter

Steps:
-Create an array from "A" to input letter
-If letter is "A" output "A"
-Else, Itterate through the array
  -Calculate left space [current_index...-1].size
  -Calculate the center space(1 + (2* [1...-1].size))
  -"#{left_space}#{char}#{center_space}"
  
-Create a clone of the original array, reverse it
  -itterate from index 1 to -1
    -
-remove the 

=end

class Diamond
  def self.make_diamond(input_letter)
    #return "A" if letter == "A"
    letters_arr = ("A"..input_letter).to_a
    reverse_letters = letters_arr[0...-1].reverse
    returned_strings =[]
    left_array = []
    center_array = []
    
    letters_arr.each_with_index do |letter, index|
      left_space = " " * (letters_arr[index...-1].size)
      center_space = " " * (1 + (2 * (index - 1))) if index > 0
      if index == 0
        returned_strings << "#{left_space}#{letter}"
      else
        returned_strings << "#{left_space}#{letter}#{center_space}#{letter}"
      end
      left_array << left_space unless letter == input_letter
      center_array << center_space unless letter == input_letter
    end
    left_array.reverse!
    center_array.reverse!
    
    reverse_letters.each_with_index do |letter, index|
      if letter == "A"
        returned_strings << "#{left_array[index]}#{letter}"
      else
        returned_strings << "#{left_array[index]}#{letter}#{center_array[index]}#{letter}"
      end
    end
    returned_strings.join("\n") + "\n"
  end
  
end

puts Diamond.make_diamond("G")
    

 