class Array
  def my_map
    i = 0
    acc = []
    while i < size
      acc << yield(self[i])
      i += 1
    end
    acc
  end

  def my_map_v2
    acc = []
    each { |i| acc << yield(i) }
    acc
  end
end

p [1,2,3,4,5].my_map { |elem| elem * elem }
puts
p [1,2,3,4,5].my_map_v2 { |elem| elem * 2 }
