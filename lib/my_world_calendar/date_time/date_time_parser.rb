module MyWorldCalender
  #
  # 日時管理クラス。
  # @version 1.0.0
  #
  class Parser
    #
    # 時間の基礎的な設定を行う。
    # @param [Fixnum] second_in_millis 一秒に含まれるミリ秒数。
    # @param [Fixnum] minute_in_seconds 一分に含まれる秒数。
    # @param [Fixnum] hour_in_minutes 一時間に含まれる分数。
    # @param [Fixnum] day_in_hour 一日に含まれる時間。
    # @param [Fixnum] week_in_days 一週間に含まれる日数。
    # @param [Array] month_in_days 一月に含まれる日数。
    # @version 1.0.0
    #
    def initialize(second_in_millis, minute_in_seconds, hour_in_minutes, day_in_hours, week_in_days, month_in_days)
      @second_in_millis = second_in_millis
      @minute_in_seconds = minute_in_seconds
      @minute_in_millis = @second_in_millis * @minute_in_seconds
      @hour_in_minutes = hour_in_minutes
      @hour_in_millis = @minute_in_millis * @hour_in_minutes
      @day_in_hours = day_in_hours
      @day_in_millis = @hour_in_millis * @day_in_hours
      @week_in_days = week_in_days
      @week_in_millis = week_in_days * @day_in_millis
      @month_in_days = month_in_days
      @year_in_months =  month_in_days.length
      @year_in_millis = month_in_days.inject(:+) * @day_in_millis
    end

    #
    # 日時クラスの初期整形を行う。
    # @varsion 1.0.0
    #
    def format(date)
      # ミリ秒の整形
      if date.milli >= @second_in_millis
        format_milli = date.milli.divmod(@second_in_millis)

        # 商を秒に加え、剰余をミリ秒に
        date.second = format_milli[0]
        date.milli = format_milli[1]
      end

      # 秒の整形
      if date.second >= @minute_in_seconds
        format_second = date.second.divmod(@minutes_in_seconds)

        # 商を分に加え、剰余を秒に
        date.minute = format_second[0]
        date.second = format_second[1]
      end

      # 分の整形
      if date.minute >= @hour_in_minutes
        format_minute = date.minute.divmod(@hour_in_minutes)

        # 商を時に加え、剰余を分に
        date.hour = format_minute[0]
        date.minute = format_minute[1]
      end

      # 時の整形
      if date.hour >= @day_in_hours
        format_hour = date.hour.divmod(@day_in_hours)

        # 商を日に加え、剰余を時に
        date.day = format_hour[0]
        date.hour = format_hour[1]
      end

      # 日の整形
      while date.day >= @month_in_days[date.month] do
        date.day -= @month_in_days[date.month]
        date.month += 1
      end

    end

    #
    # 時間を解析し、フォーマットを整える。
    # @varsion 1.0.0
    #
    def normalized(date)
      # 時間整える処理
    end
  end
end