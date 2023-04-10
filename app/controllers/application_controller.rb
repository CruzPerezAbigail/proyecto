class ApplicationController < ActionController::Base
  
        before_action :set_paper_trail_whodunnit
         before_action :configure_permitted_parameters, if: :devise_controller?
         before_action :authenticate_usuario!
         
         before_action :authenticate_usuario!, :except => [:find]
        
         rescue_from CanCan::AccessDenied do |exception|
          redirect_to '/', :alert => exception.message
        end
       

        def current_ability
          @current_ability ||= Ability.new(current_usuario)
        end
        
         protected

         def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :password) }
             devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nombre, :id, :apellidouno, :apellidodos, :role]) 
             devise_parameter_sanitizer.permit(:account_update, keys: [:email, :nombre, :id, :apellidouno, :apellidodos, :role])
         end

     


         def current_user
          return unless session[:usuario_id]
          @current_user ||= Usuario.find(session[:usuario_id])
        end
      
        
          
        
        
        end 


  
      
     def require_sing_out
        unless usuario_sign_out?
          redirect_to usuarios/sign_in,
          alert: "Por favor, inicie sesión primero!"
     
      end

      def permission_denied 
        flash[:error] = "Lo sentimos, no tienes permiso para acceder a esa página."
        redirect_to root_url
      end 
    
    end 
  



