def compute
  if block_given?
    yield
  else
    'Does not compute.'
  end
end

def compute
  return 'Does not compute.' unless block_given?
  yield
end

=begin
ls solution is cleaner. If no block is given return DNC
otherwise yield to that block. 

=end

# further exploration
def compute(arg)
  return 'Does not compute.' unless block_given?
  yield(arg)
end

compute(1){|num| puts num}
compute(2)
comput3([1, 2, 3]){ |arr| arr.each{|ele| ele + 1}}

def compute(arg="default", &block)
  block_given? ? block.call(arg) : "Does not compute."
end
#brenno has defined compute to take two args, arg whose default value is 'default' and an implicit block arg `block`
#a ternary opperator is used with the gaurd logic of `block_given?` if given, then call is called on block passing in arg. else does not compute. 
chars = :chars.to_proc

p compute(3) {|arg|[1, 2] << arg} # => [1, 2, 3]
p compute("echo") {|arg| arg * 2} # => "echoecho"
p compute(&:upcase)               # => "DEFAULT" (implictly calls `to_proc` on the `Symbol` obj)
#ok so, the unary & is used to connect the symbol :upcase to the explicit block parameter. the string 'default' is passed to the block
p compute(&chars)                 # => ["d", "e", "f", "a", "u", "l", "t"] (passing a Proc obj)
p compute("no block")             # => "Does not compute."
p compute      
