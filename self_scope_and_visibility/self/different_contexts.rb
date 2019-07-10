puts "In Top level self is #{self}"

class C
  puts "In Class definition level self is #{self}"

  def self.x
    puts "In class method C.x self is #{self}"
  end

  def m
    puts "In instance C#m self is #{self}"
  end
end

C.x
C.new.m
