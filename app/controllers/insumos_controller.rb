class InsumosController < ApplicationController
  load_and_authorize_resource
  before_action :set_insumo, only: %i[ show edit update destroy ]

  # GET /insumos or /insumos.json
  def index
    @insumos = Insumo.all
  end

  # GET /insumos/1 or /insumos/1.json
  def show
  end

  # GET /insumos/new
  def new
    @insumo = Insumo.new
  end

  # GET /insumos/1/edit
  def edit
  end

  # POST /insumos or /insumos.json
  def create
    @insumo = Insumo.new(insumo_params)

    respond_to do |format|
     if @insumo.save
    
        format.html { redirect_to insumo_url(@insumo), notice: "El Insumo fue creado exitosamente " }
        format.json { render :show, status: :created, location: @insumo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumos/1 or /insumos/1.json
  def update
    respond_to do |format|
      if @insumo.update(insumo_params)
        format.html { redirect_to insumo_url(@insumo), notice: "Insumo se actualizo correctamente" }
        format.json { render :show, status: :ok, location: @insumo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos/1 or /insumos/1.json
  def destroy
    @insumo.destroy

    respond_to do |format|
      format.html { redirect_to insumos_url, notice: "Insumo eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumo
      @insumo = Insumo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insumo_params
      params.require(:insumo).permit(:nombre, :caracteristicas, :existencia, :estatus)
    end
end
