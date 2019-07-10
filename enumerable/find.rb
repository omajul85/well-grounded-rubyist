failure = lambda { "Whoopsi!"}
a = [1, 2, 3, 4, nil, 6, 7, 8]
b = a.compact

p a.find(failure) { |e| e.nil? }
p b.find(failure) { |e| e.nil? }
