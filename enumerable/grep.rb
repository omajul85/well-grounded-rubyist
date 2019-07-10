# grep (aka ===)
miscellany = ["one", 25, :three, "four", { five: 5 }, 6..66]
strings = miscellany.grep(String)
puts "The strings are: #{strings.inspect}"

p miscellany.grep(1..30)

# enumerable.grep(expression) is functionally equivalent to
# enumerable.select {|element| expression === element }

puts
puts "grep can also take a block and yield to it the results before return"
p miscellany.grep(Hash) { |e| e.invert }
