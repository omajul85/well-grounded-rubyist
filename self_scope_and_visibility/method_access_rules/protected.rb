class C
  def initialize(n)
    @n = n
  end

  def compare(c)
    if c.n > n
      puts "The other object's n is bigger"
    else
      puts "The other object's n is the same or smaller"
    end
  end

  protected

  attr_reader :n
end

c1 = C.new(100)
c2 = C.new(101)
c1.compare(c2)

# The object doing the comparing (c1, in the example) has to ask the 
# other object (c2) to execute its n method.
#
# Therefore, n can’t be private.
