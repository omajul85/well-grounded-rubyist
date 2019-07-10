module M
  def report
    puts "*** report method in module M ***"
  end
end

module N
  def report
    puts "*** report method in module N ***"
  end
end

class C
  include M
  include N
end

class D < C
  def method_missing(m, *args, &block)
    puts "There's no method called #{m} here -- please try again."
  end
end

obj = D.new
obj.report
obj.caca(12.0, :foo)

# I’m an instance of a class called D. Does class D define an instance method report?
# No.
# Does D mix in any modules?
# No.
# Does D’s superclass, C, define a report instance method?
# No.
# Does C mix in any modules?
# Yes, M.
# Does M define a report method?
# Yes.
# Good! I’ll execute that method.
# The search ends when the method being searched for is found, or with an error
# condition if it isn’t found. The error condition is triggered by a special method
# called method_missing, which gets called as a last resort for otherwise unmatched messages.
