=begin

create a decimal to roman numeral converter. 

I will need to break the input into it's constituent parts(thousands, hundreds, tens, and ones)
  -3123 % 3000 = 123 && 3000 == 10 ** 3(here 3 is equivalent to 10 to the power of one less than the size of the digits array of the numbers)
  -3123 / (10 ** 3) equals the number of M's we'll need. (output less than 5)
  -3679 = MMMDCLXXIX
  
rules with roman numerals.
  -if the digit is a 4 or a 9, then you place the letter for the next lowest exp of 10 in front of the appropriate letter for higher exp of 10. ex. 900 == CM
      450 == CDL
  -if the digit is a 2,3,6,7,8 then we add up by the multiples in the appropriate increments. 
  

I will need a hash whose keys are roman numerals and whose values are the decimal equivalent
M- 1000
D- 500
C- 100
L- 50
X- 10
V- 5
I- 1

steps:
-create empty roman numeral string
-break the digit into it's thousands place value
  -divide by 1000, store result
    -if the result is included in [1,2,3] then append M times the result to output string
    **this should be true for all test cases
    -else move on
  -store return value of original numer mod 10 ** 3
    -divide by 100, store result
      -if result == 4, append CD
      -if result == 9, append CM
      -if result is included in [1,2,3] append C times the result
      -if redule is included in [5,6,7,8] append D plus result times C
  -store return of hundred value mod 10**2
    divide by 10 store result
      -if result == 4, append XL
      -if result == 9, append XC
      -if result is included in [1,2,3] append X times the result
      -if redule is included in [5,6,7,8] append L plus result times X
  -store return of tens value mod 10
      -if result == 4, append IV
      -if result == 9, append IX
      -if result is included in [1,2,3] append I times the result
      -if redule is included in [5,6,7,8] append V plus result times I
      
  -return roman numeral string
=end

class RomanNumeral
  def initialize(number)
    @number = number
  end
  
  def to_roman
    roman_numeral = ''
    
    current_digit = @number / (10 ** 3)
    next_digit = @number % (10 ** 3)
    
    if [1, 2, 3].include?(current_digit)
      roman_numeral += "M" * current_digit
    end
    
    current_digit = next_digit / (10 ** 2)
    next_digit = @number % (10 ** 2)
    
    if [1, 2, 3].include?(current_digit)
      roman_numeral += "C" * current_digit
    elsif [6, 7, 8].include?(current_digit)
      roman_numeral += "D" + ("C" * (current_digit - 5))
    elsif current_digit == 9
      roman_numeral += "CM"
    elsif current_digit == 4
      roman_numeral += "CD"
    elsif current_digit == 5
      roman_numeral += "D"
    end
    
    current_digit = next_digit / 10
    next_digit = @number % 10
    
    if [1, 2, 3].include?(current_digit)
      roman_numeral += "X" * current_digit
    elsif [6, 7, 8].include?(current_digit)
      roman_numeral += "L" + ("X" * (current_digit - 5))
    elsif current_digit == 9
      roman_numeral += "XC"
    elsif current_digit == 4
      roman_numeral += "XL"
    elsif current_digit == 5
      roman_numeral += "L"
    end
    
    current_digit = next_digit
    if [1, 2, 3].include?(current_digit)
      roman_numeral += "I" * current_digit
    elsif [6, 7, 8].include?(current_digit)
      roman_numeral += "V" + ("I" * (current_digit - 5))
    elsif current_digit == 9
      roman_numeral += "IX"
    elsif current_digit == 4
      roman_numeral += "IV"
    elsif current_digit == 5
      roman_numeral += "V"
    end
    roman_numeral
  end
end


