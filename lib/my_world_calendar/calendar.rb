module MyWorldCalendar
  class Calender
    def initialize(name, year, month, day, hour, minute, second)
      @name = name
      @year = year
      @month = month
      @day = day
      @hour = hour
      @minute = minute
    end
    # 日付の各要素の抽象クラスを作成し、基本的な動作を定義する
    # dateの子要素はmaxになった場合、managerに通知を行い、関連するdateに通知を行う。
  end
end