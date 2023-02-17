def one?(array)
  count = 0
  array.each do |ele|
    count += 1 if yield(ele)
    return false if count > 1
  end
  return false if count == 0
  true
end

def one?(collection)
  seen_one = false
  collection.each do |element|
    next unless yield(element)
    return false if seen_one
    seen_one = true
  end
  seen_one
end

=begin
the ls solution itterates through each element in the collection. It skips to the next element if the yield from the block is false.
if the block returns true, then it checks the truthyness of seen_one. seen one is initialized to false, thus the first time the block returns true, this return
is skipped. then seen one is reassigned to true. Itteration contiunes. if the block returns false every time after, then true is returned. If block returns 
true again then line 15 will return false because theres more than one true return from block. If block onl every returns false, then false is returned as
that will be the value associated with seen_one. 

I used a count variable to track the truthy returns from the block. If the count exceeds 1 then the iteration breaks and the code returns false
otherwise if the count is 0 we get a false return. otherwise, true. 

=end

