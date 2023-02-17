=begin
we want to create a Clock class
-class methods:
  -at(hr, min=0) 
    -sets clock to time by calling an instance method
    for at
    -in test cases, all the values that are entered for hours and minutes are positive and less than 24 and less than 60 respectivly
  -to_s
    -outputs the time on clock to string 
    'hh:mm'
  - +(minutes)
    -adds minutes
    -when clock exceeds 24 hours, it resolves back to 0
  - -(minutes)
    -subtracts minutes
    -

edge case with to_s take care of the formatting when the int has only one digit. Be sure to add the zero in front

ok so we are working with two variables within the at method
hrs and minutes
-we have minutes and we add our minutes to it.
  -with the absolute value of total minutes, divide by 60 to get the number of hours we're going to add
  -then we mod by 60 to get the number of minutes for the new Clock object
-Next, we add to the extra hours from minutes to the hours given.
  -this total mod 24 will return our value for hours

subtraction
  -very similar logic for subtraction, only we want to be sure to use the absolute value of the result of subtract for
  calculations
  
  -must return new clock object passing these values as args
  
to_s
  -I suppose we can use class instance variables.. to move the data around. 
  -if not, then we have the class method at create a new clock object and that passes the value to a constructor method
  -this is what I'm gonna do. that way the class method creates a new object. this means that the plus and minus will be instance
  methods that construct new objects through at
  
  -if hour / 10 == 0
    hour_string = "0" + hour.to_s
  -if minute / 10 == 0
    minute_string = '0' + minute.to_s
    
  return "#{hour_str}:#{minute_str}"
  
=end

class Clock
  attr_reader :hr, :min
  
  def initialize(hour, minute)
    @hr = hour
    @min = minute
  end
  
  def self.at(hr, min=0)
    Clock.new(hr, min)
  end
  
  def to_s
    if hr / 10 == 0
      hr_string = "0#{hr}"
    else
      hr_string = hr
    end
    
    if min / 10 == 0
      min_string = "0#{min}"
    else
      min_string = min
    end
    
    "#{hr_string}:#{min_string}"
  end
  
  def +(additional_minutes)
    updated_min = (min + additional_minutes) % 60
    updated_hr = (hr + (additional_minutes / 60) ) % 60
    Clock.at(updated_hr, updated_min)
  end
  
    def -(additional_minutes)
    updated_min = ((min - additional_minutes) % 60).abs
    updated_hr = ((hr - (additional_minutes / 60) ) % 24).abs
    Clock.at(updated_hr, updated_min)
  end
  
  def ==(other)
    self.to_s == other.to_s
  end
end

  
  