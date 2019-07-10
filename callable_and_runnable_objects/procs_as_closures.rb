# closures: anonymous functions that preserve the local variable bindings that are in effect when the
# procs are created. We’ll look next at how procs operate as closures.

def multiply_by(m)
  Proc.new {|x| x * m }
end

# The variable m, whatever its value, is preserved inside the code block passed to
# Proc.new and therefore serves as the multiplier every time the Proc object returned
# from multiply_by is called.

mult10 = multiply_by(10)
double_it = multiply_by(2)
a = mult10.call(12)
b = double_it.call(100)

puts "The results are #{a} and #{b}."
puts

# proc object preserving local context
def call_some_proc(pr)
  a = "Irrelevant 'a' in method scope"
  puts a
  pr.call
end

a = "'a' to be used in Proc block"

# The Proc object carries its context around with it.
# A piece of code that carries its creation context around with it like this is called a closure
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)

# call_some_proc => Calling this method without a Proc will produce an ArgumentError