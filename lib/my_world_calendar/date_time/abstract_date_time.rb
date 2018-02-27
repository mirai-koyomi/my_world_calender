module MyWorldCalender
  module DateTime
    class AbstractCalender
      attr_accessor :era, :second_in_millis, :minute_in_millis, :hour_in_millis, :day_in_millis

      def initialize(era, second_in_millis, minute_in_seconds, hour_in_minutes, day_in_hours)
        @era = era
        @second_in_millis = second_in_millis
        @minute_in_millis = second_in_millis * minute_in_seconds
        @hour_in_millis = minute_in_millis * hour_in_minutes
        @day_in_millis = hour_in_millis * day_in_hours
      end
    end

    class CalenderDate < AbstractDeteTime
      def initialize(year, month, day_of_month, day_of_week, hour, minutes, seconds, millis)
        @year = year
        @month = month
        @day_of_month = day_of_month
        @day_of_week = day_of_week
        @hour = hour
        @minutes = minutes
        @seconds = seconds
        @millis = millis
      end
    end
  end
end