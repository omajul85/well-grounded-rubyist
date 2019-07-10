# Any class that aspires to be enumerable must have an each method whose job is to
# yield items to a supplied code block, one at a time.

class Rainbow
  include Enumerable

  def each
    yield 'red'
    yield 'orange'
    yield 'yellow'
    yield 'green'
    yield 'blue'
    yield 'indigo'
    yield 'violet'
  end
end

r = Rainbow.new
r.each { |color| puts "Next color: #{color}" }

big = r.select { |color| color.length > 4 }
puts "Color with more than 4 chars: #{big.inspect}"

puts
puts "Enumerable methods:"
puts "#{Enumerable.instance_methods(false).sort}"
