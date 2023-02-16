class Equipment < ApplicationRecord
         belongs_to :shape, autosave: true
         belongs_to :departament, autosave: true
         belongs_to :zone, autosave: true
         belongs_to :brand, autosave: true
         belongs_to :licence, autosave: true
         has_many :maintenance
         validates  :shape_id, :departament_id, :brand_id, :zone_id, :estatus, :presence => true 
         validates :serial, :uniqueness => true 

         def mantenimientos
                  Equipment.joins(:maintenance)
                  .where(maintenance: {maintenance_id: self.id})
                  
                  #self.joins(:maintenance).select('equipment.id, maintenance.id as registro_mante')
          end 
          

          def self.get_mantenimientos
                  self.joins(:maintenance).select('maintenance_id, equipment_id as registro_mante')
          end 


          def self.servicios 
                  Maintenance.includes(:equipments).where(equipment: {id: "equipment_id"})
          end 


end
