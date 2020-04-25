require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

stephanie= Photographer.new("stephanie")
mark= Photographer.new("Mark")
other= Photographer.new("other")

jenn= Customer.new("jenn")
mari=Customer.new("mari")
cassie=Customer.new("cassie")

order1=Order.new(1, "April", 1500, jenn, stephanie)
order2=Order.new(2, "April", 1500, cassie, other)
order3=Order.new(3, "April", 1500, mari, stephanie)
order4=Order.new(4, "April", 1500, jenn, other)
order5=Order.new(5, "April", 1500, cassie, mark)
order6=Order.new(6, "April", 1500, mari, stephanie)
order7=Order.new(7, "April", 1500, jenn, mark)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
