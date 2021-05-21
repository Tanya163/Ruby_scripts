# Q-19 Modify the sum of times method for any number of time values passed to this method. 
# Eg: ("11:23:07","22:53:45","0:23:23","23:45:56") -> "2 day & 10:26:11" 
# ("11:23:07") -> "11:23:07"

require "time"

class SumTime

  PATTERN = /^([01]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])/
  @@total_seconds = 0

  attr_accessor :array_of_time

  def initialize(array_of_time)
    @array_of_time = array_of_time
    @array_of_time.each do |time|
      time = PATTERN.match(time)
      if !time
        raise "Invalid 24-hour time value"
        break
      else
        sum(time)
      end
    end
  end

  def sum(time)
    @@total_seconds += convert_to_seconds(time)
  end

  def convert_to_seconds(time)
    (time[1].to_i * 3600) + (time[2].to_i * 60) + (time[3].to_i)
  end

  def display_time
    days = @@total_seconds / 86400
    remaining_seconds = @@total_seconds % 86400
    time = Time.at(remaining_seconds).utc.strftime("%T")
    if days > 1
      print "#{days} days & #{time}\n"
    elsif days == 1
      print "#{days} day & #{time}\n"
    else
      print "#{time}\n"
    end
  end
end

sum_time = SumTime.new(ARGV)
sum_time.display_time
