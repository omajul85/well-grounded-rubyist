class Parent
  @@value = 100
end

class Child < Parent
  @@value = 50
end

class Parent
  puts @@value # => 50
end

# The Child class is a subclass of Parent, and that means
# Parent and Child share the same class variables. Not different class variables
# with the same names, but the same actual variables.
