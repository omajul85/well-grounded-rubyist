array = [1,2,3,4,5,6,7,8,9,10]

# handles each element only once
array.each_slice(3) { |slice| p slice }

puts 
# takes a new grouping at each element
array.each_cons(3) { |slice| p slice }