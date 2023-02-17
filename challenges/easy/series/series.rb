=begin

write a program that will take a string of digits and return all the possible consecutive numbers series of a specified length of that string

input:
string

output:
array (potentially with sub arrays

q: what happens if a slice is smaller than the designated slice type? It doesn't get added

data:
string (instance var)->split into array, convert digits into int-> slice this array into sub arrays equal in length to the slice size-> append to new array
slice size (instance method arg)


steps:
-create sieres class
  -one arg for initialize method(are they always numbers in string form?) yes but there is a zero on the front so gotta do string converstion
    -take arg, split into characters, convert into int
  -need reader method for digits array (slice_string)
  -slices method
    -create container array(return value)
    -itterate through the digits array with index
      -slice from current index to arg length
      -if slice is == to arg length, append sliced array to container
      -if slice is less than arg length, break out of iteration
      -if arg length is greater than size, raise an argument error
    -if container array is size 1, flatten it.
    return container

=end

class Series
  attr_reader :slice_string
  
  def initialize(slice_string)
    @slice_string = slice_string.split("").map(&:to_i)
  end
  
  def slices(slice_size)
    slices_arr = []
    slice_string.each_with_index do |_, index|
      current_slice = slice_string.slice(index, slice_size)
      if current_slice.size == slice_size
        slices_arr << current_slice
      elsif slice_size > slice_string.size
        raise ArgumentError
      elsif current_slice.size < slice_size
        break
      end
    end
    slices_arr
  end
      
end



  # def slices(n)
  #   raise ArgumentError if n > slice_string.size
  #   slices_arr = []
  #   slice_string.size.times do |idx|
  #     break if idx + n > slice_string.size
  #     slices_arr << slice_string.slice(idx, n)
  #   end
  #   slices_arr
  # end

  # def slices(n)
  #   raise ArgumentError if n > slice_string.size
  #   (0..slice_string.size - n).each_with_object([]) do |idx, arr|
  #     arr << slice_string.slice(idx, n)
  #   end
  # end

# def slices(n)
#   raise ArgumentError if n > slice_string.size
#   arr = []
#   (0..slice_string.size - n).each do |idx|
#     slices_arr << slice_string.slice(idx, n)
#   end
#   slices_arr
# end