# recursion
class C
  def x(value_for_a, recurse = false)
    a = value_for_a
    puts "Here's the inspect string for 'self': #{self.inspect}"
    puts "And here's a: #{a}"
    if recurse
      puts "Calling myself..."
      x('second value for a')
      puts "After recursion, here's a: #{a}"
    end
  end
end

c = C.new
c.x('first value for a', true)
