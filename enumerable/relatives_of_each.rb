puts "reverse_each:"
p [1,2,3].reverse_each { |e| puts e * 10 }

puts
puts "each_with_index:"
numbers = %w{uno dos tres cuatro}
numbers.each_with_index{ |n, i| puts "#{i+1}. #{n}." }

puts
puts "each.with_index:"
numbers.each.with_index(1){ |n, i| puts "#{i}. #{n}." }
