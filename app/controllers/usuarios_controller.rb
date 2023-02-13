class UsuariosController < ApplicationController
        load_and_authorize_resource
        #before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
        # before_action :admin_usuario,     only: :destroy

         def index
          @usuarios = Usuario.all
         end

         def show 
          @usuarios = Usuario.find(params[:id])
         end 

         def new 
          @usuarios = Usuario.new
         end 

         def create 
          @usuarios = Usuario.new(usuario_params)
          if @usuarios.save
            flash[:notice] = 'EL USUARIO SE HA GUARDADO EXITOSAMENTE'
          redirect_to usuarios_path
         else 
          flash[:error] = 'No se pudo guardar el usuario'
          render :new
          end
        end 

         def update 
                  @usuarios = Usuario.find(params[:id])

                  if @usuarios.update(usuario_params)
                            flash[:notice]= 'El usuario se ha actualizado'
                           redirect_to usuarios_path
                  else 
                    flash[:error] = 'No se pudo actualizar'
                           render :edit
                  end 
         end 

         def destroy 
                  @usuarios = Usuario.find(params[:id])
                 if  @usuarios.destroy
                  flash[:notice] = "Usuario eliminado"
                  redirect_to usuarios_path
                 else 
                  flash[:error]= 'error al eliminar'
                  render :destroy
         end 
        end 


         private
        

                def admin_usuario
                  redirect_to(root_url) unless current_user.admin?
                end
        def usuario_params
          params.require(:usuario).permit(:id, :nombre, :apellidouno, :apellidodos, :role, :correo, :contraseña, :contraseña)
        end 



end 
