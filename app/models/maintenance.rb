class Maintenance < ApplicationRecord
         belongs_to :zone, autosave: true
         
         has_many :resource

        

         
         has_many :usuarios
end

