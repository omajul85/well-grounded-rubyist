states = %w{ NJ NY CT MA VT FL }
puts "Take 2: #{states.take(2)}"
puts "Drop 2: #{states.drop(2)}"

puts "Original array: #{states}"

puts "take_while"
p states.take_while {|s| /N/.match(s) }

puts "drop_while"
p states.drop_while {|s| /N/.match(s) }

ary = [1,3,4,5,6,7,"EOF",8,4,8]
res = ary.take_while{ |e| Integer === e }
puts "The first integers are: #{res.inspect}"


# The take and drop operations are a kind of hybrid of first and select. They’re
# anchored to the beginning of the iteration and terminate once they’ve satisfied the
# quantity requirement or encountered a block failure.
