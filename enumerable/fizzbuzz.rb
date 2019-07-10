def fb_calc(i)
    case 0
        when i % 15 then "FizzBuzz"
        when i % 5  then "Buzz"
        when i % 3  then "Fizz"
    else
        i.to_s
    end
end

def fizzbuzz(n)
    (1..Float::INFINITY).lazy.map{ |i| fb_calc(i) }.first(n)
end

p fizzbuzz(10)