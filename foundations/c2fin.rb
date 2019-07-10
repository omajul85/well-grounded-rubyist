puts "Reading Celsius temperature from data file..."
num = File.read('temp.dat').to_i
fah = (num.to_i * 9 / 5) + 32
fh = File.new('temp.out', 'w')
fh.puts "The Fahrenheit equivalent is #{fah}"
fh.close
