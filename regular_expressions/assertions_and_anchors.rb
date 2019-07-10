# An assertion or an anchor doesn’t consume any characters. Instead, it expresses a constraint: 
# a condition that must be met before the matching of characters is allowed to proceed.

# The most common anchors are beginning of line (^) and end of line ($).

comment_regexp = /^\s*#/
p comment_regexp.match(" # Pure comment!")
p comment_regexp.match(" x = 1 # Code plus comment!")