# frozen_string_literal: true

class Ability

 
  include CanCan::Ability

  def initialize(usuario)
   
  
    usuario ||= Usuario.new

              if usuario.role == "Administrador"
       
                     can :manage, :all

              
            elsif usuario.role == "agente"
              alias_action :create, :read, :update, :to => :cru
                     can :cru, Solicitud
                     can :cru, Equipo12 
                     can :cru, Mantenimiento
                     can :cru, Reporte 
                     can :cru, Licencium
                     can :cru, Tipo
                     can :cru, Marca
                     can :cru, Insumo
                     can :cru, Materiale
                     can :cru, Departamento
                     cannot :manage, Usuario

       

              else usuario.role == "personal"
        
                     alias_action :create, :read, :update, :to => :cru
                     can :cru, Solicitud
              end 
       end 
end 
 

  
  

      
  

