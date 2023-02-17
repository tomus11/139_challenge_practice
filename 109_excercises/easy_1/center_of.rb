def center_of(str)
  center_index = str.size / 2
  str.size.even? ? str[center_index - 1, 2] : str[center_index]
end

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

=begin

I did good identifying there was an either or type decision
in this problem however, my initial solution was not as dry
as the ls solution. What they did well was extract the logic 
of center_index and store it in a variable to customize for each
of the cases. Instead typed that logic twice for each case.
I updated my solution to reflect this extracted logic
=end

