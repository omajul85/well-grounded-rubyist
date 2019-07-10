colors = %w{red orange yellow green blue indigo violet}
p colors.group_by{ |color| color.size }

class Person
  attr_accessor :age

  def initialize(opts)
    self.age = opts[:age]
  end

  def teenager?
    (13..19) === age
  end
end

# step returns an enumerator
people = 10.step(25,3).map { |i| Person.new({age: i}) }
teens = people.partition { |person| person.teenager? }
puts "#{teens[0].size} teens; #{teens[1].size} non-teens"

p teens2 = people.select { |person| person.teenager? }
