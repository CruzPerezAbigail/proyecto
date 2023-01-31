class MaterialesController < ApplicationController
  load_and_authorize_resource
  before_action :set_materiale, only: %i[ show edit update destroy ]

  # GET /materiales or /materiales.json
  def index
    @materiales = Materiale.all
  end

  # GET /materiales/1 or /materiales/1.json
  def show
  end

  # GET /materiales/new
  def new
    @materiale = Materiale.new
  end

  # GET /materiales/1/edit
  def edit
  end

  # POST /materiales or /materiales.json
  def create
    @materiale = Materiale.new(materiale_params)

    respond_to do |format|
      if @materiale.save
        format.html { redirect_to materiale_url(@materiale), notice: "El material fue creado con éxito." }
        format.json { render :show, status: :created, location: @materiale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @materiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materiales/1 or /materiales/1.json
  def update
    respond_to do |format|
      if @materiale.update(materiale_params)
        format.html { redirect_to materiale_url(@materiale), notice: "El material se actualizó con éxito." }
        format.json { render :show, status: :ok, location: @materiale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @materiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiales/1 or /materiales/1.json
  def destroy
    @materiale.destroy

    respond_to do |format|
      format.html { redirect_to materiales_url, notice: "El material fue elimino con éxito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materiale
      @materiale = Materiale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def materiale_params
      params.require(:materiale).permit(:nombre, :caracteristicas, :existencia)
    end
end
