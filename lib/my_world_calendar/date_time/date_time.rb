module MyWorldCalender
  class DateTime
    attr_accessor :year, :month, :day, :hour, :minute, :second, :milli, :week
    attr_reader :normarize
    def initialize(parser, year, month, day, hour, minute, second, milli)
      @parser = parser
      @year = year
      @month = month
      @day = day
      @hour = hour
      @minute = minute
      @second = second
      @milli = milli
      @week = 0
      @normalize = false
      @date_in_milli = 0

      format_date
    end
  end

  private
  def format_date
    @parser.format(self)
    @normalize = true
  end
  def parse_date
    unless @normalize
      @parser.normalize(self)
      @normalize = true
    end
  end
end