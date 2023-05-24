require_relative 'singleton'

puts "Start."
obj1 = Singleton.get_instance
obj2 = Singleton.get_instance

if obj1 == obj2
  puts "同じインスタンスです"
else
  "異なるいんすたんすです"
end

puts "End"
