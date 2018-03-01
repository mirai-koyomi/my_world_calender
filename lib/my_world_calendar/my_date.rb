# require 'date'
# class Class
# 	def subclasses
# 		subclasses = []
# 		ObjectSpace.each_object(singleton_class) do |k|
# 			subclasses << k if k.superclass == self
# 		end
# 		subclasses
# 	end
# end

# Date::ABBR_DAYNAMES = ["Sun", "Mon", "hoge", "Wed", "Thu", "Fri", "Sat"]
# class MyDate < Date
#   self.class::ABBR_DAYNAMES = ["Sun", "Mon", "hoge", "Wed", "Thu", "Fri", "Sat"]

#   def subclasses
#     subclasses = []
#     ObjectSpace.each_object(singleton_class) do |k|
#       subclasses << k if k.superclass == self
#     end
#     subclasses
#   end
# end

# date = MyDate.today
# p date.strftime("%Y年 %m月 %d日 %a")
# p Date::ABBR_DAYNAMES
# p MyDate.parse('2018-2-27').strftime("%Y年 %m月 %d日 %a")

