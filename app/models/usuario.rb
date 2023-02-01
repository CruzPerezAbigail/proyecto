class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
 
         validates :rfc, format: { with: /[A-ZÑ&]{3,4}\d{6}(?:[A-Z\d]{3})/, message: "Formato no compatible" }
                                            

    validates :rfc, :uniqueness => true 

    

    ROLES = %w[admin personal agente]

     delegate :can? , :cannot?, to: :ability

    ROLES.each do |role_name|
      define_method "#{role_name}?" do 
        role == role_name
      end 
    end 
   #enum role: [:usuario, :agente, :admin]
   #after_initialize :set_default_role, :if => :new_record?

   #def set_default_role
    #self.role ||= :usuario
   #end 

   def ability 
    @ability ||= Ability.new(self)
   end 

      
end 



