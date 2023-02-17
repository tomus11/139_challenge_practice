=begin

write a program that takes a word, and a list of possible anagrams and returns
a list of words containing all the actual anagrams.

steps
-create an anagram class that has an instance variable (@word) set upon instantiation
-anagram class hav instance method that takes an array of words and returns an array of all anagrams for the instance variable @word
  -break word into a hash containing the count for each of it's characters
-

=end

class Anagram
  def initialize(word)
    @word = word
    @anagrams = []
  end
  
  def match(test_words)
    
    word_tally = @word.downcase.chars.tally
    
    test_words.each do |test_word|
      test_tally = test_word.downcase.chars.tally
      @anagrams << test_word if test_tally == word_tally && (@word.downcase != test_word.downcase)
    end
    
    @anagrams
  
  end
end  