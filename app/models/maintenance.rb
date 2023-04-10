class Maintenance < ApplicationRecord
         has_paper_trail
         belongs_to :zone, autosave: true
         belongs_to :equipment, autosave: true
         belongs_to :tool, autosave: true
         belongs_to :physical, autosave: true
         has_many :resource
         belongs_to :usuario, autosave: true 
         
         
end

