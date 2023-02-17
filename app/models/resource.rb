class Resource < ApplicationRecord
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         belongs_to :maintenances, autosave: true 
        
end
