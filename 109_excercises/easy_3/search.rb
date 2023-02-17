values = ['1st', '2nd', '3rd', '4th', '5th']
def input(value_arr)
  nums = []
  value_arr.each do |value|
    puts "Enter the #{value} number:"
    nums << gets.chomp.to_i
  end
  puts 'Enter the last number:'
  search = gets.chomp.to_i

  included(nums, search)
end

def included(nums, search)
  if nums.include?(search)
    puts "The number #{search} appears in #{nums}"
  else 
    puts "The number #{search} does not appear in #{nums}"
  end
end

input(values)