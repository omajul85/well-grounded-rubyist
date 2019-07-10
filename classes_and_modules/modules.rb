module Example
  def say_hello
    puts 'Hello'
  end
end

class Tester
  include Example
end

puts Tester.new.say_hello
