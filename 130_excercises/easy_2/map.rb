def map(array)
  array.each_with_object([]) do |ele, arr|
    arr << yield(ele)
  end
end

=begin
I used each with object. the only thing to note here is that the object is identified by the final parameter of the `each_with_object` block and that it will
return the object. 
=end

