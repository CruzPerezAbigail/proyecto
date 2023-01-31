class AreasController < ApplicationController
  load_and_authorize_resource :except => :create 
  before_action :set_area, only: %i[ show edit update destroy ]
  
  # GET /areas or /areas.json
  def index
    @areas = Area.all
  end

  # GET /areas/1 or /areas/1.json
  def show
    @area = Area.find(params[:id])
  end

  # GET /areas/new
  def new
    @area = Area.new
  end

  # GET /areas/1/edit
  def edit
    @area = Area.find(params[:id])
  end

  # POST /areas or /areas.json
  def create
    @area = Area.new(area_params)

      if @area.save
        
        
        flash[:notice] = "El área fue creada con éxito." 
         redirect_to areas_path
      else
        flash[:error] = "Error al guardar el area"
        render :new 
       
    end
  end

  # PATCH/PUT /areas/1 or /areas/1.json
  def update
    @area= Area.find(params[:id])
      if @area.update(area_params)
        flash[:notice] = "Area se ha actualizado correctamente"
        redirect_to areas_path
        else
          flash[:error] = "NO SE PUEDO ACTUALIZAR"
          render :edit
    end
  end

  # DELETE /areas/1 or /areas/1.json
  def destroy
    @area = Area.find(params[:id])
    if @area.destroy
      flash[:notice] = "La area se ha eliminado"
      redirect_to areas_path
    else 
    flash[:error] = "Error al eliminar"
    render :destroy
     
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
def set_area
  @area = Area.find(params[:id])
end 
    # Only allow a list of trusted parameters through.
    def area_params
      params.require(:area).permit(:nombre)
    end
end
