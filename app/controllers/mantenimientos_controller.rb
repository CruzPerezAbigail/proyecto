class MantenimientosController < ApplicationController
  load_and_authorize_resource
  before_action :set_mantenimiento, only: %i[ show edit update destroy ]

  def index
    @mantenimientos = Mantenimiento.all
  end

  def show
    @mantenimientos = Mantenimiento.find(params[:id])
  end

  def new
    @mantenimientos = Mantenimiento.new 
  end

  def create
    @mantenimientos= Mantenimiento.new(mantenimiento_params)
    if @mantenimientos.save
      flash[:notice] = "El registro de mantenimiento fue guardado exitosamente"
      redirect_to mantenimientos_url
    else 
      flash[:error] = "El registro no se puedo guardar cheque sus datos"
      render :new 
  end
end 

  def edit
    @mantenimientos = Mantenimiento.find(params[:id])
  end

  def update
    @mantenimientos = Mantenimiento.find(params[:id])
    if @mantenimiento.update(mantenimiento_params)
      flash[:notice] = "El registro se ha actualizado correctamente"
      redirect_to mantenimientos_index_url
    else 
      flash[:error] = "El registro no se puedo actualizar"
      render :edit
  end
end 

  def destroy
    @mantenimiento = Mantenimiento.find(params[:id])
    if @mantenimiento.delete
      flash[:notice] = "El registro fue elimnado correctamente"
      redirect_to mantenimientos_index_url
    else 
      flash[:error] = "El registro no se puede eliminar"
      render :destroy
  end
end 

def mantenimiento_params 
  params.require(:mantenimiento).permit(:fecha_inicio, :fecha_fin, :observaciones, :tipo_mantenimiento, :serie, :id_departamento, :rfc, :id_manteriales, :id_herramienta, :id_insumo)
end 
private 
def set_mantenimiento
  @mantenimientos = Mantenimiento.find(params[:id])
end 


end
