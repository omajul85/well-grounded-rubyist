class Bid
  include Comparable
  attr_accessor :estimate

  def <=>(other_obj)
    self.estimate <=> other_obj.estimate
  end

  def to_s
    estimate
  end

  # Internally this is what is happening
  #
  # def <=>(other_obj)
  #   if self.estimate < other_obj.estimate
  #     -1
  #   elsif self.estimate > other_obj.estimate
  #     1
  #   else
  #     0
  #   end
  # end
end

bid1 = Bid.new
bid2 = Bid.new
bid1.estimate = 100
bid2.estimate = 200
puts "bid1 (#{bid1.to_s}) < bid2 (#{bid2.to_s}) ? #{bid1 < bid2}"
