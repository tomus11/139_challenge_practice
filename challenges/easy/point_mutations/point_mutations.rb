=begin

create a class 'Dna' that has one instance variable, an array whose chars represent dna sequence
create an instance method within the class that takes one string as argument
  -method should convert the arg into an array of single chars
  -method should iterate through the instance variable, one char at a time and compare to the value stored at same index in arg array.
    -if same, nothing
    -if different, increment the mutation variable by one
    -break out of iteration after final value in first array
  -return mutation count
  
=end

class DNA
  def initialize(string)
    @sequence = string.split('')
  end
  
  def hamming_distance(string)
    sequence_to_compare = string.split('')
    smaller_sequence_size = smaller(sequence_to_compare)
    
    index = 0
    mutations = 0
    while index < smaller_sequence_size
      mutations += 1 if @sequence[index] != sequence_to_compare[index]
      index += 1
    end
    mutations
  end
  
  def smaller(sequence_to_compare)
    return @sequence.size if @sequence.size <= sequence_to_compare.size
    sequence_to_compare.size
  end
end
