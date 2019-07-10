class Banner
  def initialize(text)
    @text = text
  end

  def to_s
    @text
  end

  def +@
    @text.upcase
  end

  def -@
    @text.downcase
  end

  def !
    @text.reverse
  end
end

b = Banner.new("Omar Julian")
puts b
puts +b
puts -b
puts !b
puts (not b)
