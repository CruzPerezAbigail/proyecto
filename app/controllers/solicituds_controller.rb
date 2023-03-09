class SolicitudsController < ApplicationController
  load_and_authorize_resource
  before_action :set_solicitud, only: %i[ show edit update destroy ]

  # GET /solicituds or /solicituds.json
  def index
    @solicituds = Solicitud.all
  end

  # GET /solicituds/1 or /solicituds/1.json
  def show
  end

  # GET /solicituds/new
  def new
    @solicitud = Solicitud.new
    @time_now = Date.strptime('%Y-%m-%d')
  end

  # GET /solicituds/1/edit
  def edit
  end

  # POST /solicituds or /solicituds.json
  def create
    @solicitud = Solicitud.new(solicitud_params)

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to solicitud_url(@solicitud), notice: "Solicitud se ha registrado correctamente." }
        format.json { render :show, status: :created, location: @solicitud }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicituds/1 or /solicituds/1.json
  def update
    respond_to do |format|
      if @solicitud.update(solicitud_params)
        format.html { redirect_to solicitud_url(@solicitud), notice: "Solicitud se ha actualizado correctamente." }
        format.json { render :show, status: :ok, location: @solicitud }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicituds/1 or /solicituds/1.json
  def destroy
    @solicitud.destroy

    respond_to do |format|
      format.html { redirect_to solicituds_url, notice: "Solicitud se ha eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_params
      params.require(:solicitud).permit(:zone_id, :fecha, :descripcion, :usuarios_id)
    end
end
