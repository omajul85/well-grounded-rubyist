class Array
  def my_each
    i = 0
    while i < size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_each_v2
    size.times do |i|
      yield(self[i])
    end
    self
  end
end

p [1,2,3,4,5].my_each { |elem| puts "I'm on element #{elem}"}
puts
p [:a, :b, :c].my_each_v2 { |elem| puts "This is symbol #{elem}"}
