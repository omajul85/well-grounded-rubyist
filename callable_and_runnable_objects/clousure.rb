# The proc serves as a counter. It increments its variable every time it’s called:
# using the count variable that was preserved inside it at the time of its creation.

def make_counter
  count = 0
  return Proc.new { count += 1 }
end

c = make_counter

p c
p c.call
p c.call

d = make_counter
p d.call