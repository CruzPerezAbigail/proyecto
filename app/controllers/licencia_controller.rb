class LicenciaController < ApplicationController
  load_and_authorize_resource
  before_action :set_licencium, only: %i[ show edit update destroy ]

  # GET /licencia or /licencia.json
  def index
    @licencia = Licencium.all
  end

  # GET /licencia/1 or /licencia/1.json
  def show
  end

  # GET /licencia/new
  def new
    @licencium = Licencium.new
  end

  # GET /licencia/1/edit
  def edit
  end

  # POST /licencia or /licencia.json
  def create
    @licencium = Licencium.new(licencium_params)
      if @licencium.save
       flash[:notice] = "La licencia fue creada con exito." 
       redirect_to licencia_index
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @licencium.errors, status: :unprocessable_entity }
      
    end
  end

  # PATCH/PUT /licencia/1 or /licencia/1.json
  def update
    respond_to do |format|
      if @licencium.update(licencium_params)
        format.html { redirect_to licencium_url(@licencium), notice: "La licencia se actualizo con exito." }
        format.json { render :show, status: :ok, location: @licencium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @licencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licencia/1 or /licencia/1.json
  def destroy
    @licencium.destroy

    respond_to do |format|
      format.html { redirect_to licencia_url, notice: "La licencia se ha eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_licencium
      @licencium = Licencium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def licencium_params
      params.require(:licencium).permit( :nombre, :anio, :num_licencia)
    end
end
