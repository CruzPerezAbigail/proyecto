class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :validatable
  
 
   validates :id, format: { with: /[A-ZÑ&]{3,4}\d{6}(?:[A-Z\d]{3})/, message: "Formato no compatible" }
    validates :id, :uniqueness => true 
    has_one :maintenance
   
    
    

    ROLES = %w[admin personal agente]

     delegate :can? , :cannot?, to: :ability

    ROLES.each do |role_name|
      define_method "#{role_name}?" do 
        role == role_name
      end 
    end 
    

   def ability 
    @ability ||= Ability.new(self)
   end 
   
    
   
      
end 



