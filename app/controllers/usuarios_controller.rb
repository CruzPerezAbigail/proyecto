class UsuariosController < ApplicationController
        load_and_authorize_resource
        before_action :set_usuario, only: %i[ show edit update destroy ]
        #before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
        # before_action :admin_usuario,     only: :destroy

         def index
          @usuarios = Usuario.all
         end

         def show 
         end 

         def new 
          @usuario = Usuario.new
         end 

         def create 
          @usuario = Usuario.new(usuario_params)
          
            respond_to do |format|
              if @usuario.save
                format.html { redirect_to usuario_url(@usuario), notice: "El usuario se ha creado correctamente." }
                format.json { render :show, status: :created, location: @usuario }
              else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @usuario.errors, status: :unprocessable_entity }
              end
            end
        end 

         def update 
          respond_to do |format|
            if @usuario.update(usuario_params)
              format.html { redirect_to usuario_url(@usuario), notice: "El usuario se actualizado correctamente." }
              format.json { render :show, status: :ok, location: @usuario }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @usuario.errors, status: :unprocessable_entity }
            end
          end
         end 

         def destroy 
                  
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
                  params.require(:usuario).permit(:id, :nombre, :apellidouno, :apellidodos, :role, :email, :password, :password_confirmation)
                end 

                def set_usuario
                  @usuarios = Usuario.find(params[:id])
                end 

end 
