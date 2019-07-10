# Capturing submatches with parenthesis
str = "Peel,Emma,Mrs.,talented amateur"
pattern = /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/
res = pattern.match(str)
p res
puts "Dear #{$2} #{$1}," # submatches are stored as global variables

# Match success and failure
str = "My phone number is (123) 555-1234."
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(str)
unless m
    puts "There was no match, sorry!"
end

puts
puts "The whole string we started with: #{m.string}"
puts "The entire part of the string that matched: #{m[0]}"
puts "The 3 captures:"
3.times do |i|
    puts "Capture ##{i+1}: #{m.captures[i]}"
end
puts "Another way to capture the 1st match: #{m[1]}"

p m[1] == m.captures[0]
p m[2] == m.captures[1]

# Counting parenthesis from the left thing
puts
puts "/((a)((b)c))/.match('abc')"
p /((a)((b)c))/.match("abc")