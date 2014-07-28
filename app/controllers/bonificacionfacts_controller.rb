class BonificacionfactsController < ApplicationController
  before_action :set_bonificacionfact, only: [:show, :edit, :update, :destroy]

  # GET /bonificacionfacts
  # GET /bonificacionfacts.json
  def index
    @bonificacionfacts = Bonificacionfact.all
  end

  # GET /bonificacionfacts/1
  # GET /bonificacionfacts/1.json
  def show
  end

  # GET /bonificacionfacts/new
  def new
    @bonificacionfact = Bonificacionfact.new
  end

  # GET /bonificacionfacts/1/edit
  def edit
  end

  # POST /bonificacionfacts
  # POST /bonificacionfacts.json
  def create
    @bonificacionfact = Bonificacionfact.new(bonificacionfact_params)

    respond_to do |format|
      if @bonificacionfact.save
        format.html { redirect_to @bonificacionfact, notice: 'Bonificacionfact was successfully created.' }
        format.json { render :show, status: :created, location: @bonificacionfact }
      else
        format.html { render :new }
        format.json { render json: @bonificacionfact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bonificacionfacts/1
  # PATCH/PUT /bonificacionfacts/1.json
  def update
    respond_to do |format|
      if @bonificacionfact.update(bonificacionfact_params)
        format.html { redirect_to @bonificacionfact, notice: 'Bonificacionfact was successfully updated.' }
        format.json { render :show, status: :ok, location: @bonificacionfact }
      else
        format.html { render :edit }
        format.json { render json: @bonificacionfact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonificacionfacts/1
  # DELETE /bonificacionfacts/1.json
  def destroy
    @bonificacionfact.destroy
    respond_to do |format|
      format.html { redirect_to bonificacionfacts_url, notice: 'Bonificacionfact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bonificacionfact
      @bonificacionfact = Bonificacionfact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bonificacionfact_params
      params.require(:bonificacionfact).permit(:bonificacion_id, :factura_id, :edesal_id, :linea, :porcentaje, :fdesde, :fhasta)
    end
end
