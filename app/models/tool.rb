class Tool < ApplicationRecord
         has_paper_trail
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         has_one :maintenance
end
