def running_total(arr)
  sum = 0
  total_arr = []

  arr.each do |num|
    sum += num
    total_arr << sum
  end
  total_arr
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

=begin
paying closer attention to the output required (a new array) would have suggested the use of map over each
using map also saves on creating the empty array and eliminates the shovel opperator in my each method. It also
eliminates having to return total_arr

think, what do I want this method to return? is there a built in method that intrincally supports this return value
=end

