def number
  puts "please select an integer greater than 0:"
  num = gets.chomp.to_i
  operation(num)
end

def operation(num)
  op =''
  loop do
    puts "Enter 's' to compute sum, 'p' to compute the product."
    op = gets.chomp
    break if op == 's' || op == 'p'
    puts "input invalid"
  end
  sum(num) if op == 's'
  prod(num) if op == 'p'
end

def sum(num)
  sum = 0
  1.upto(num) {|num| sum += num }
  puts "The sum of the integers between 1 and #{num} is #{sum}"
end

def prod(num)
  prod = 1
  1.upto(num) {|num| prod *= num }
  puts "The sum of the integers between 1 and #{num} is #{prod}"
end

number