# Tne enumerator e is an enumerating machine. It' not a container that contains objects.
# The enumerator iterates once for every time that << (or the yield method) is
# called on the yielder.

e = Enumerator.new do |y|
    y << 1
    y << 2
    y << 3
end

# y is a yielder, intance of Enumerator::Yielder

e.each { |e| puts e }
ary = e.to_a
puts "We converted the enumerator into an #{ary.class}"

f = Enumerator.new do |y| 
    ('a'..'e').each { |c| y << c }
end

puts "f is an #{f.class}, that can be converted into #{f.to_a.inspect}"

# usages

# how to use an enumerator's each method
array = %w{cat dot rabbit}
e = array.map
res = e.each { |animal| animal.capitalize }
p res

# protecting objects with enumerators
def add_to_ary(a)
    a << "Hola amigo"
end

original = [1,2,3]
begin
    add_to_ary(original.to_enum)
rescue
    puts "By using to_enum we raise an Exception if somebody tries to mutate the array!"
end

# Fine-grainder iteration
# an enumerator has state and remember where it is in the enumeration
e = array.to_enum
puts e.next
puts e.next
e.rewind
puts e.next
puts

# Adding enumerability with the enumerator
module Music
    class Scale
        NOTES = %w{c c# d d# e f f# g g# a a# b}

        def play
            NOTES.each{ |note| yield note }
        end
    end
end

scale = Music::Scale.new
scale.play{ |note| puts "The next note is: #{note}"}

# You can turn scales into enumerable!
e = scale.enum_for(:play)
p e.map{ |note| note.upcase }
p e.select{ |note| note.include? 'f'}