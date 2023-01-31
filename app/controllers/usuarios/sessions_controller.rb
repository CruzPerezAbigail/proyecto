# frozen_string_literal: true

class Usuarios::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  # if  super
  # else
  #   flash[:danger] = 'Correo electrónico/contraseña no válida' # Not quite right!
  #   render 'new'
  # end
  # end 

  # # POST /resource/sign_in
    def create
    
       usuario = Usuario.find_by_email(email: params[:session][:email].downcase)
  
       if usuario && usuario.authenticate(params[:session][:password]) 
         @current_usuario = usuario
       else
        flash[:danger]=  'correo electrónico o contraseña es invalida'
        render :new 
       end
     end
    end

  # DELETE /resource/sign_out
 # def destroy
  #super
  # redirect_to 
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
