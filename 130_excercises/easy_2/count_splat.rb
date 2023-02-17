def count(*args)
  count = 0
  args.each do |arg|
    count += 1 if yield(arg)
  end

  count
end

=begin

the splat operator allows for 1 or more args to be passed, then they'll be stored in an array. helps us work with sets. 

=end

