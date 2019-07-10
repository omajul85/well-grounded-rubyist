# find_all (aka select)
a = %w{ uno dos tres cuatro cinco }
res = a.select { |e| e.size < 4 }

puts "#{a.inspect}"
puts "Los numeros de menos de 4 caracteres son: #{res.inspect}"
puts "Numeros que no comienzan por `C`: #{a.reject {|c| c.start_with?('c')}}"
