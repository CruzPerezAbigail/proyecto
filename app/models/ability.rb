# frozen_string_literal: true

class Ability

 
  include CanCan::Ability

  def initialize(usuario)
   
  
    usuario ||= Usuario.new

              if usuario.role == "Administrador"
       
                     can :manage, :all

              
            elsif usuario.role == "Agente"
              alias_action :create, :read, :update, :to => :cru
                     can :manage, :all

       

              else usuario.role == "Personal"
        
                     alias_action :create, :read, :update, :to => :cru
                     can :cru, Solicitud
              end 
       end 
end 
 

  
  

      
  

