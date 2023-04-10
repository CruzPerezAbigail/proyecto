class Zone < ApplicationRecord
         has_paper_trail
         validates :nombre, :departament_id, presence: true
         validates :nombre , :uniqueness => true
         belongs_to :departament, autosave: true
         has_one :equipment
         has_one :maintenance
         has_one :solicitud
         

end
