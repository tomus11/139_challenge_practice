=begin
  write a program that takes a word and returns the score for that word
  need- a hash where letters are keys and values represent the score for that letter
  
=end

class Scrabble
  SCORES = {"A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1, 
            "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" =>  3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4,
            "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10 }
            
  def initialize(word)
    @word = word
  end
  
  def self.score(word)
    count = 0
    return count if word == nil
    word.upcase.chars.each do |char|
      count += SCORES[char] if SCORES.keys.include?(char)
    end
    count
  end
  
  def score
    count = 0
    return count if @word == nil
    @word.upcase.chars.each do |char|
      count += SCORES[char] if SCORES.keys.include?(char)
    end
    
    @score = count
  end
end 
