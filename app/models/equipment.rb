class Equipment < ApplicationRecord
         belongs_to :shape, autosave: true
         belongs_to :departament, autosave: true
         belongs_to :zone, autosave: true
         belongs_to :brand, autosave: true
         belongs_to :licence, autosave: true
         validates  :shape_id, :departament_id, :brand_id, :zone_id, :estatus, :presence => true 
         validates :serial, :uniqueness => true 
end
