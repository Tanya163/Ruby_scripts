# Q-17 Write a method that sums up 2 24-hour time values(h:m:s). 
# Validate the time using regular expressions. 
# Eg: ("0:45:34","0:15:58") -> 01:01:32 ; 
# ("11:23:07","22:53:45") -> 1 day & 10:16:52. Note: Make use of Time class

require "time"

class SumTime

  PATTERN = /^([01]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])/
  attr_accessor :time_1, :time_2

  def initialize(time_1, time_2)
    @time_1 = time_1
    @time_2 = time_2
    self.validate  
  end

  def validate
    time1 = PATTERN.match(@time_1)
    time2 = PATTERN.match(@time_2)
    raise "Invalid 24-hour time value" if !time1 | !time2
    sum(time1, time2)
  end

  def sum(time1, time2)
    total_seconds = convert_to_seconds(time1) + convert_to_seconds(time2)
    display_time(total_seconds)
  end

  def convert_to_seconds(time)
    (time[1].to_i * 3600) + (time[2].to_i * 60) + (time[3].to_i)
  end

  def display_time(seconds)
    day = seconds / 86400
    remaining_seconds = seconds % 86400
    time = Time.at(remaining_seconds).utc.strftime("%T")

    if day > 0
      print "#{day} day & #{time}\n"
    else
      print "#{time}\n"
    end
  end

end

time_1 = ARGV[0]
time_2 = ARGV[1]
sum_time = SumTime.new(time_1, time_2)
