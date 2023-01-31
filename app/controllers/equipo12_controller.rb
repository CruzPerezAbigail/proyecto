class Equipo12Controller < ApplicationController

  load_and_authorize_resource :except => :create 
  before_action :set_equipo12, only: [:show, :edit, :update, :destroy]
  before_action :set_tipos, only: [:new, :edit]
  before_action :set_areas, only: [:new, :edit]
  before_action :set_marcas, only: [:new, :edit]
  before_action :set_departamentos, only: [:new, :edit]


  def index
    @equipo12 = Equipo12.all
    #@equipo12= Equipo12.get_mantenimientos
  end

  def show
     
      @equipo12 = Equipo12.find(params[:id])
    @equipo12= Equipo12.get_mantenimientos
    

  end

  def new
    if current_usuario.admin?
    @equipo12 = Equipo12.new 
    else 
      redirect_to equipo12_index_url, alert: "No autorizado"
  end

  def create
    
    @equipo12 = Equipo12.new(equipo_params)
    if @equipo12.save
      
      flash[:notice] = 'EL EQUIPO SE HA GUARDADO EXITOSAMENTE'
      redirect_to equipo12_index_url
    else 
      flash[:error] = 'No se pudo guardar el equipo'
      render :new
  end   
  end

  def edit
    authorize! :update, @equipo12
    @equipo12 = Equipo12.find(params[:id])
   
  end

  def update
    authorize! :update, @equipo12
    @equipo12= Equipo12.find(params[:id])
    if @equipo12.update(equipo_params)
      flash[:notice] = 'Equipo se ha actualizo correctamente'
      redirect_to equipo12_index_url
    else 
      flash[:error] = 'No se puedo actualizar'
      render :edit
  end
  end

  def destroy
    @equipo12 = Equipo12.find(params[:id])
    if @equipo12.delete
      flash[:notice] ='EL EQUIPO SE HA ELIMINADO'
      redirect_to equipo12_index_url
    else 
      flash[:error] ='ERROR AL ELIMINAR'
      render :destroy
  end
  end

  def set_equipo12
    @equipo12 = Equipo12.find(params[:id])
  end 

  def equipo_params
    params.require(:equipo12).permit( :tipo, :modelo, :serial, :observaciones, :ram, :estatus, :disco_duro, :id_tipo , :id_marcas, :id_departamentos, :id_areas, :id_licencias, :fecharegistro)
  end

  def set_tipos
    @tipos= Tipo.all
  end 

  def set_areas
    @areas= Area.all
  end 
  
  def set_marcas
    @marcas= Marca.all
  end 

  def set_departamentos
    @departamentos= Departamento.all
  end 

end 
