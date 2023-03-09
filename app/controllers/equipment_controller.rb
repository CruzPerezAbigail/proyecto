class EquipmentController < ApplicationController
  load_and_authorize_resource :except => :create 
  before_action :set_equipment, only: [ :show, :edit, :update, :destroy ]

  # GET /equipment or /equipment.json
  def index
   @equipment = Equipment.all
  # @equipment= Equipment.get_mantenimientos  
  end

  # GET /equipment/1 or /equipment/1.json
  def show
    @equipment = Equipment.find(params[:id])
   # @equipment= Equipment.servicios 
  end

  # GET /equipment/new
  def new
    @equipment = Equipment.new
  end

  # GET /equipment/1/edit
  def edit
  end

  # POST /equipment or /equipment.json
  def create
    @equipment = Equipment.new(equipment_params)

    respond_to do |format|
      if @equipment.save
        
        format.html { redirect_to equipment_index_url, notice: "El equipo de ha creado correctamente." }
        format.json { render :show, status: :created, location: @equipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/1 or /equipment/1.json
  def update
    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html { redirect_to equipment_url(@equipment), notice: "El equipo de ha actualizado correctamente." }
        format.json { render :show, status: :ok, location: @equipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/1 or /equipment/1.json
  def destroy
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to equipment_index_url, notice: "El equipo se ha eliminado correctamente." }
      format.json { head :no_content }
    end

    def search
      @query = params[:query]
      @equipment = Equipment.where("equipment.serial LIKE ?",["%#{query}%"])
      render "index"
    end 

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipment_params
      params.require(:equipment).permit( :modelo, :serial, :observaciones, :ram, :estatus, :disco_duro, :shape_id , :brand_id, :departament_id, :zone_id, :licence_id, :fecharegistro)
    end
end
