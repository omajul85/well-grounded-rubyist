names = %w{ David Black Yukihiro Matsumoto }
names.each_slice(2).map do |name, lastname|
    puts "First name: #{name}, lastname: #{lastname}"
end

# indexing enumerables with with_index
alphabet = ('a'..'z').map.with_index(1){ |c, i| [c, i]}
p alphabet

# LAZY enumerators
# Calling a lazy method directly on a range obj will produce a lazy
# enumerator over that range

lazy_enum = (1..Float::INFINITY).lazy # <Enumerator::Lazy: 1..Infinity>

# So, if we want the first 10 multiples of three
p lazy_enum.select{ |n| n % 3 == 0 }.first(10)

# You can also wire this lazy enumerator up to select, creating
# a cascade of lazy enumerators
lzs = (1..Float::INFINITY).lazy.select{ |n| n % 3 == 0 }
p lzs.take(5).force # You have to call force on the result of take!