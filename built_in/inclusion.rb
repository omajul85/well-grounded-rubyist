 module StringExtras
   def shout
     self.upcase + "!!!"
   end
 end

 class String
   include StringExtras
 end

 str = "hello world"
 puts str.shout
 puts "String includes the method :shout?"
 p str.methods.include? :shout
