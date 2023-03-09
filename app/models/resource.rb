class Resource < ApplicationRecord
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         
         
        
end
