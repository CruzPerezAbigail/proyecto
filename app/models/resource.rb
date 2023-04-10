class Resource < ApplicationRecord
         has_paper_trail
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         belongs_to :maintenance , autosave: true
         
         
        
end
