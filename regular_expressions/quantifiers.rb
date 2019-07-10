# Quantifiers let you specify how many times in a row you want something to match.

# Zero or one => ?

# Example
# the character M, followed by the character r, followed by
# zero or one of the character s, followed by
# zero or one of the character '.'

re = /Mrs?\.?/

# Zero or more => *

# Example
# Let’s say you’re trying to match closing </poem> tags in an XML document.
# Such a tag may or may not contain whitespace.

re = /<\s*\/\s*poem\s*>/

# Each time it appears, the sequence \s* means the string being matched is allowed to
# contain zero or more whitespace characters at this point in the match.

puts "Match" if re.match("< / poem    >")

# One or more => +

p /\d+/.match("There’s a digit here somewh3re...")
p /\d+/.match("No digits here. Move along.")
/(\d+)/.match("Digits-R-Us 2345")
puts "The match was #{$1}"

# Non greedy quantifiers
# The * (zero-or-more) and + (one-or-more) quantifiers are greedy. This means they
# match as many characters as possible, consistent with allowing the rest of the pattern
# to match.

string = "abc!def!ghi!"
match = /.+!/.match(string)
puts match[0]

# We can make + as well as * into non-greedy quantifiers by putting a question mark
# after them.

# This version says, “Give me one or more wildcard characters, but only as many as you
# see up to the first exclamation point, which should also be included.”
string = "abc!def!ghi!"
match = /.+?!/.match(string)
puts match[0]
puts

# Specific number of repetitions
p /([A-Z]{5})/.match("David BLACK")