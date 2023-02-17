class Madlib
  def initialize
    @noun = noun
    @verb = verb
    @adjective = adjective
    @adverb = adverb
    madlib
  end

  def prompt(grammar_type)
    puts "Enter a #{grammar_type}: "
    gets.chomp
  end

  def noun
    prompt('noun')
  end

  def verb
    prompt('verb')
  end

  def adjective
    prompt('adjective')
  end

  def adverb
    prompt('adverb')
  end

  def madlib
    puts "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end

end

Madlib.new

=begin
I went with a class based solution here because it just fits. I'm pleased with my implementation. I think this code is fairly dry. I als
pushed myself to create simple methods that call other methods which is a direction my code needs to improve. When first runnin this code
I ran into an error where I had changed the name of the parameter of the prompt method to 'grammar_type' because it was a more descriptive name for the 
nature of this parameter. The trouble is I didn't update the parameter name in the method definition line. When working on a more complezx piece of 
code, this sort of error could be a major headache. SO, when updating a name, be sure to update it everywhere. This can be akin to finishing one task before
moving to the next. So, when you're done, there's way less to do.
=end