class Post
  attr_accessor :title, :content, :author, :published_date

  def initialize(title, content, author, published_date)
    @title = title
    @content = content
    @author = author
    @published_date = published_date
  end

  def block_inspect(&block)
    self.instance_variables.each do |v|
      stringified_var = v.to_s.sub(/@/, '')
      value = self.instance_variable_get(v)
      block.call(stringified_var, value) if block_given?
    end
  end
end

post1 = Post.new('The best post ever', 'Bla bla bla', 'Omar Alvarez', Time.now)
post1.block_inspect { |attr, value| puts "#{attr} = #{value}" }
puts

res = "<ul>\n"
post1.block_inspect do |attr, value| 
  res += "\t<li>The #{attr} is #{value}.</li>\n"
end
res += "</ul>"
puts res

# if no block is given, nothing happens
post1.block_inspect