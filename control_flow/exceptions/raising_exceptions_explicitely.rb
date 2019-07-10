def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
  puts "You provided #{x}"
end

print "Enter a number: "
n = gets.to_i
begin
  fussy_method(n)
rescue ArgumentError => e
  puts "That was not an acceptable number"
  puts "Here is the backtrace for this exception:"
  puts e.backtrace
  puts
  puts "And here is the exception object message:"
  puts e.message
end
