=begin

Meetups tend to happen regularily once a month
Write a class that takes two areguments at instantiatin. A year and a month.

then write an instance method that returns the date for the meetup. 
The instance method takes two args, 'Tuesday', 'first', 'second', 'third', fourth, fifth, last, and teenth

ok so it looks like we're going to take the input date from the class instantiation and create a date object. 

this will represent the first day of that that month

For the instance method we create a hash that connects the string ,day of the week to the method associated with that day of the weeks
  -we can use the hash to return a symbol, we can then use a unary & at implementation to convert this symbol into a proc.
  -then during itteration, one by one we can pass the Date object to the proc for testing.
    -until we get a truthy return from the proc increment day by 1.
    -if occurenace == teens (could be helper method)
      increment day by_ 7 until the day is included if [13, 14, 15, 16, 17, 18, 19] 
    
    -counter = 1
    until counter == INSTANCE (could be helper method)
      increment cate by 7 and counter by 1
    
  -return the Date of the date that out puts true
=end
require 'date'

class Meetup
  
  attr_reader :month
  
  DAYHASH = { "monday"=> :monday?, "tuesday"=> :tuesday?, "wednesday" => :wednesday?,
            "thursday" => :thursday?, "friday" => :friday?, "saturday" => :saturday?, "sunday" => :sunday?}

  INSTANCE = {'first' => 1, "second" => 2, "third" => 3, "fourth" => 4, "fifth" => 5} 
  
  def initialize(year, month)
    @month = Date.civil(year, month)
  end
  
  def day(day, occurrence)
    
    day_check = DAYHASH[day.downcase]
    day = first_instance(&day_check)
    return teenth(day) if occurrence == 'teenth'
    return last(day) if occurrence == 'last'
    return instance(day, INSTANCE[occurrence.downcase])
  end
  
  def first_instance
    day = month
    
    until yield(day)
      day = day.next_day
    end
    day
  end
  
  def teenth(day)
    until [13, 14, 15, 16, 17, 18, 19].include?(day.day)
      day = day.next_day(7)
    end
    day
  end
  
  def last(day)
    while day.next_day(7).month == month.month
      day = day.next_day(7)
    end
    day
  end
  
  def instance(day, occurrence)
    count = 1
    until count == occurrence
      day = day.next_day(7)
      count += 1
    end
    return nil if day.month != month.month
    day
  end
end

    
