# The biggest obstacle to understanding these examples is understanding the fact
# that classes are objects—and that every object, whether it’s a car, a person, or a class,
# gets to have its own stash of instance variables. Car and Hybrid can keep track of man-
# ufacturing numbers separately, thanks to the way instance variables are quarantined
# per object.

class Car
  @@makes = []
  @@cars = Hash.new(0)

  attr_reader :make

  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes.push(make)
      @@cars[make]
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      self.class.total_count += 1
    else raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

class Hybrid < Car
end

Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")
h3 = Hybrid.new("Honda")
f2 = Hybrid.new("Ford")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}"

puts "Counting total cars..."
puts "There are #{Car.total_count} cars in total."

puts "There are #{Hybrid.total_count} hybrids on the road!"
