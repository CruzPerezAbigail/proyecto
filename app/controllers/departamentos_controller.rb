class DepartamentosController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_usuario!
  

  # GET /departamentos or /departamentos.json
  def index
    @departamento = Departamento.all
  end

  # GET /departamentos/1 or /departamentos/1.json
  def show
    @departamento = Departamento.find(params[:id])
  end

  # GET /departamentos/new
  def new
    @departamento = Departamento.new
  end

  # GET /departamentos/1/edit
  def edit
    @departamento = Departamento.find(params[:id])
  end

  # POST /departamentos or /departamentos.json
  def create
   
    @departamento = Departamento.new(departamento_params)
     if @departamento.save
        flash[:notice]= "El departamento fue guardado con exito"
        redirect_to departamentos_path
        else
       flash[:notice]= "Error al guardar el nuevo departamento"
       render :new 
    end
  end

  # PATCH/PUT /departamentos/1 or /departamentos/1.json
  def update
   @departamento= Departamento.find(params[:id])
  
      if @departamento.update(departamento_params)
       flash[:notice] = "El departamento se ha actualizado correctamente." 
       redirect_to departamentos_path
      else
      flash[:error] = "No se puedo actualizar"
      render :edit
    end
  end

  # DELETE /departamentos/1 or /departamentos/1.json
  def destroy
   
    @departamento.destroy

    respond_to do |format|
      format.html { redirect_to departamentos_url, notice: "El departamento se ha eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    

    # Only allow a list of trusted parameters through.
    def departamento_params
      params.require(:departamento).permit(:nombre, :num_equipo, :id_area)
    end
  
  end 
