class Area < ApplicationRecord
         validates :nombre, presence: true
         validates :nombre , :uniqueness => true
         belongs_to :departamentos, autosave: true
end
