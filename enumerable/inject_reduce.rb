ary = [1,2,3,4,5]
a = ary.inject(0) { |acc, n| acc + n }
puts "The sum of #{ary} is: #{a}."