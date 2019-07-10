# For example, to find all strings longer than 10
# characters and containing at least 1 digit, from an array of strings called array, you
# can do this:
array = ['This 3', 'You have 3 errors on this file', 'This is a better example 4.']
p array.find_all {|e| e.size > 10 and /\d/.match(e) }

# String#scan
# The scan method goes from left to right through a string, testing repeatedly for a
# match with the pattern you specify. The results are returned in an array.
p "testing 3 testing 4 5 testing 1".scan(/\d/)

# if using parenthetical groupings, you get an array of arrays
str = "Leopold Auer was the teacher of Jascha Heifetz."
violinist = str.scan(/([A-Z]\w+)\s([A-Z]\w+)/)
violinist.each do |fname, lname|
    puts "#{lname}'s first name was #{fname}"
end

# Same example as before but using block
# if you provide a block, scan doesn’t store the results up an array and return
# them; it sends each result to the block and then discards it.
str.scan(/([A-Z]\w+)\s([A-Z]\w+)/) do |fname, lname|
    puts "#{lname}'s first name was #{fname}"
end

"uno dos tres 4 :cinco".scan(/\w+/) { |m| puts m }

# String#split
# In keeping with its name, split splits a string into multiple substrings, returning
# those substrings as an array. split

line = "first_name=david;last_name=black;country=usa"
p record = line.split(/=|;/)

data = [] # If we had several lines
record = Hash[*line.split(/=|;/)]
data.push record
p data

# You can provide a second argument to split; this argument limits the number of
# items returned. In this example
p "a,b,c,d,e".split(/,/, 3)

# Substitution operations

# String#sub
p "typigraphical error".sub(/i/,"o")

p "capitalize the vowels".gsub(/[aeiou]/) {|s| s.upcase }
p "capitalize every word of this string".gsub(/\b\w/) {|s| s.upcase }

# using the captures in a replacement string
p "double every word".gsub(/\b(\w+)/, '\1 \1')

# Case equality and grep
# remember that in case statements, === is used implicitly
# Each when clause is a call to ===: 
#   /^y/i === answer, and so forth.

print "Continue (y/n)? "
answer = gets
case answer
when /^y/i 
    puts "Great!"
when /^n/i
    puts "Bye!"
    exit
else
    puts "Huh?"
end

# Enumerable#grep
# Enumerable#grep does a filtering operation from an enumerable object based on the case
# equality operator (===), returning all the elements in the enumerable that return a
# true value when threequaled against grep’s argument.

# You can also supply a code block to grep, in which case you get a combined
# select/map operation:
p %w{USA Colombia UK France}.grep(/[a-z]/) { |c| c.upcase }
p %w{USA Colombia UK France}.select{ |c| /[a-z]/ === c }