def xor?(a, b)
  if a
    unless b
      return true
    end
  elsif b
    unless a
      return true
    end
  end
  false
end

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

=begin
ls solution is much simpler to both read and in terms of lines used. Note the use of !. it allows this and not that. Better logic

=end