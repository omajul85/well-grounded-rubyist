# The special characters include those listed between the parentheses here: 
# (^ $ ? . / \ [ ] { } ( ) + *)

puts "Match!" if /[rd]ejected/.match("rejected")
puts "Match!" if /[rd]ejected/.match("dejected")

# To find non hexadecimal
pattern = /[^A-Fa-f0-9]/
str = "ABC343 is a hex number."
puts "The first index that is not a hex number is #{pattern =~ str}"

# [0-9] is the same as /\d/
# \w matches any digit, alphabetical character, or underscore (_).
# \s matches any whitespace character (space, tab, newline).
# The negated version of the 3 above is the same but in capital /\D/, /\W/ and /\S/