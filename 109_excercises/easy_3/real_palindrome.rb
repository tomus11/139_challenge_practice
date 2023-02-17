def real_palindrome?(str)
  str.downcase!
  str.gsub!(/[^a-z0-9]/, '')
  str == str.reverse
end

=begin
here I used gsub initially which is non destructive and reassigned the value of
str to the return of the gsub. The I switched it up and used the destructive 
gsub! to make the method more concise.

also had an error in my first regex /[^a-z]/ this replaced anything that wasn't a
letter but I wanted to keep the numbers so I added /[^a-z0-9]/ which highlights 
anything that isn't a lowercase letter or number

=end


