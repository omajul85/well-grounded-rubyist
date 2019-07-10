result = File.new('output.txt', 'w')
lines_count = 0
ages_sum = File.open('family.txt') do |f|
    f.inject(0) do |acc, record|
        lines_count += 1
        name, profession, age = record.chomp.split('|')
        result.puts("#{name} is #{age} years old and is a #{profession}.")
        acc + age.to_i
    end
end
result.puts("The average age of this family is #{ages_sum / lines_count.to_f} years old.")
result.close