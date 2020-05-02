module Memorable
  
  module ClassMethods
 
 def reset_all
   self.reset.all
 end
 
 def count_all
   self.count.all
 end 

end 
end
