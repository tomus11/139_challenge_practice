def short_long_short(a, b)
  a.size < b.size ? a + b + a : b + a + b
end

=begin
the key to this one liner is shortenin the parameter names. reduces readability.
=end