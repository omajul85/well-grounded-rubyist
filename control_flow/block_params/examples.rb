module Examples
  def args_unleashed(a,b=1,*c,d,e)
    puts "Arguments:"
    p a,b,c,d,e
  end

  def block_args_unleashed
    puts
    yield(1,2,3,4,5,:a, "hello world")
  end

  def block_local_parameter
    puts
    x = 100
    [1,2,3].each do |x|
      puts "Parameter x is #{x}."
      x += 10
      puts "Reassigned to x in block. It's now #{x}."
    end
    puts "Outer x is still #{x}."
  end

  def block_local_variable
    puts
    x = "Original x!"
    3.times do |i;x|
      x = i
      puts "x in the block is now #{x}"
    end
    puts "x after the block ended is #{x}"
  end
end

include Examples

Examples.args_unleashed(1,2,3,4,5,6,7,8)
Examples.block_args_unleashed do |a,b=1,*c,d,e|
  puts "Arguments:"
  p a,b,c,d,e
end

Examples.block_local_parameter
Examples.block_local_variable
