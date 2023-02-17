def any?(array)
  truthy = array.select { |ele| yield(ele) }
  truthy.size > 0 ? true : false
end

def any?(collection)
  collection.each { |item| return true if yield(item) }
  false
end

=begin
the ls solution is elegant in that it places the logic for the return value into the block. thus if any iteration returns truthy from yield, then the method 
returns true. otherwise it returns false. 

I used select to store the truthy return values from yield then used the size of that array to determine what the method should return. 

=end
