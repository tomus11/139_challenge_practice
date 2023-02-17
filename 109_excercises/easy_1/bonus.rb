def calculate_bonus(salary, bonus)
  return 0 unless bonus
  return salary / 2
end


def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

=begin
Ls fools me again. If it's an either or decision, then use the ternary. 