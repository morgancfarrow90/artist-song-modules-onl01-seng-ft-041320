module Memorable
  
  module ClassMethods
 
 def reset_all
   self.clear.all
 end
 
 def count_all
   self.count.all
 end 

end 
end
