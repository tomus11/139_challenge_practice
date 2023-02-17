def step(start, stop, step)
  value = start
  steps = 1
  while value <= stop
    yield(value)
    value += step
    steps += 1
  end
  steps
end

def chris_step(start, ending, increment)
  a = start

  until a > ending
    yield(a) if block_given?
    a += increment
  end
  a
end


p step(1, 10, 3) { |value| puts "value = #{value}" }

=begin

chris has a very similar approach to me except he uses until to build his loop. this saves a few keystrokes in the logic

=end
