def century(year)
  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end
  suffix(century.to_s)
end

def suffix(century)
  teens = ['11', '12', '13']
  return century + 'th' if teens.include?(century[-2, 2])
    
  case century[-1]
  when '1' 
    century += 'st'
  when '2' 
    century += 'nd'
  when '3' 
    century += 'rd'
  else
    century += 'th'
  end
  century
end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

=begin
the big difference between my approach and the ls approach was our way of determining the finl digit/ two for proper suffix. 
I chose to convert into a string and use slice to get the data I wanted. This seemed reasonable considering the output was a string. 

They used century (int) mod 100 to find the final two digits and cnetury mod 10 to find the final digit. 

We both had very similar code beyond that. Their implementation of the suffix method was more dry. the use of then in case
statement simplified things. Also their using the return value of suffix to only be a suffix and appending was more dry too.
Whereas I concatonated my century string with every case statement, they simply did concatenation at the end. 