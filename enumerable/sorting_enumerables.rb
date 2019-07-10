class Painting
    attr_reader :price, :year
    def initialize(price = 0, year = 2018)
        @price = price
        @year = year
    end

    def <=>(other_painting)
        @price <=> other_painting.price
    end

    def to_s
        @price
    end
end

# Remark that we do not need to include the Comparable module in the 
# Paintings class, we only need to wrap the objects in a container
# that does mix in Enumerable.

p1 = Painting.new(43000)
p2 = Painting.new(188750, 1997)
p3 = Painting.new(6700, 2001)

p [p1, p2, p3].sort

# If now we want to sort by year instead, we can provide a block!
puts "Sorted by year:"
year_sort = [p1, p2, p3].sort do |a,b|
    a.year <=> b.year
end
p year_sort

begin
    puts p2 > p1
rescue
    puts 'This happens if we do not include Comparable in the Painting class!'
end

class NewPainting < Painting
    include Comparable
end

np1 = NewPainting.new(43000)
np2 = NewPainting.new(188750)
np3 = NewPainting.new(6700)

puts np1 > np2