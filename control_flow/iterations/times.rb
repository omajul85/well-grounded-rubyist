class Integer
  def my_times
    i = 0
    while i < self
      yield(i)
      i += 1
    end
    self
  end

  def my_times_v2
    (0...self).each do |i|
      yield(i)
    end
    self
  end
end

5.my_times { |elem| puts "I'm on iteration #{elem}"}
puts
5.my_times_v2 { |elem| puts "(v2) I'm on iteration #{elem}"}
