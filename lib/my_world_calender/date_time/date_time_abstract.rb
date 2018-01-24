module MyWorldCalender
  module DateTime
    class date_time_abstract
      def initialize(max_cell, total_millisec, date_value)
        @date_val = date_value
        @max_cell = max_cell
        @total_millisec = toral_millisec
      end

      def +(val)
        @date_val += val
      end

      def add_observer
      end
    end
  end
end
