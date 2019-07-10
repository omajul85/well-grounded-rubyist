names = %w{omar luis laura sisi tito lorena}

# bind this enumerator to the select method of the Array names
e = names.enum_for(:select)

# That means the enumerator’s each will serve as
# a kind of front end to array’s select:
puts e.each { |n| n.include? 'a' }

# You can also provide further arguments to enum_for. Any such arguments are passed
# through to the method to which the enumerator is being attached.

f = names.enum_for(:inject, "Names: ")
res = f.each { |acc, n| acc << "#{n}..."}
p res