class EdesalfactsController < ApplicationController
  before_action :set_edesalfact, only: [:show, :edit, :update, :destroy]

  # GET /edesalfacts
  # GET /edesalfacts.json
  def index
    @edesalfacts = Edesalfact.all
  end

  # GET /edesalfacts/1
  # GET /edesalfacts/1.json
  def show
  end

  # GET /edesalfacts/new
  def new
    @edesalfact = Edesalfact.new
  end

  # GET /edesalfacts/1/edit
  def edit
  end

  # POST /edesalfacts
  # POST /edesalfacts.json
  def create
    @edesalfact = Edesalfact.new(edesalfact_params)

    respond_to do |format|
      if @edesalfact.save
        format.html { redirect_to @edesalfact, notice: 'Edesalfact was successfully created.' }
        format.json { render :show, status: :created, location: @edesalfact }
      else
        format.html { render :new }
        format.json { render json: @edesalfact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edesalfacts/1
  # PATCH/PUT /edesalfacts/1.json
  def update
    respond_to do |format|
      if @edesalfact.update(edesalfact_params)
        format.html { redirect_to @edesalfact, notice: 'Edesalfact was successfully updated.' }
        format.json { render :show, status: :ok, location: @edesalfact }
      else
        format.html { render :edit }
        format.json { render json: @edesalfact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edesalfacts/1
  # DELETE /edesalfacts/1.json
  def destroy
    @edesalfact.destroy
    respond_to do |format|
      format.html { redirect_to edesalfacts_url, notice: 'Edesalfact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edesalfact
      @edesalfact = Edesalfact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edesalfact_params
      params.require(:edesalfact).permit(:edesal_id, :factura_id, :contratofact_id, :tarifa_id, :potvigente, :fpotvigente, :potoriginal, :fpotoriginal, :fdetectbadcosfi, :csmofijo, :eservicio)
    end
end
