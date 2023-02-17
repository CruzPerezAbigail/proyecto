class Licence < ApplicationRecord
         #belongs_to :equipment, autosave: true
         has_many :equipments
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
end
