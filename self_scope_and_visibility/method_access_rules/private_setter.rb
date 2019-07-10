class Dog
  attr_reader :age, :dog_years

  def age=(years)
    @age = years
    self.dog_years = years * 7
  end

  private

  def dog_years=(years)
    @dog_years = years
  end
end

rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog years."
puts "Rover is in reality #{rover.age} years old."
