re = /(?<first>\w+)\s+((?<middle>\w\.)\s+)?(?<last>\w+)/
p m = re.match("David A. Black")

puts m[:first]