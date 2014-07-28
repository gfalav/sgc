class OtrocargofactsController < ApplicationController
  before_action :set_otrocargofact, only: [:show, :edit, :update, :destroy]

  # GET /otrocargofacts
  # GET /otrocargofacts.json
  def index
    @otrocargofacts = Otrocargofact.all
  end

  # GET /otrocargofacts/1
  # GET /otrocargofacts/1.json
  def show
  end

  # GET /otrocargofacts/new
  def new
    @otrocargofact = Otrocargofact.new
  end

  # GET /otrocargofacts/1/edit
  def edit
  end

  # POST /otrocargofacts
  # POST /otrocargofacts.json
  def create
    @otrocargofact = Otrocargofact.new(otrocargofact_params)

    respond_to do |format|
      if @otrocargofact.save
        format.html { redirect_to @otrocargofact, notice: 'Otrocargofact was successfully created.' }
        format.json { render :show, status: :created, location: @otrocargofact }
      else
        format.html { render :new }
        format.json { render json: @otrocargofact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otrocargofacts/1
  # PATCH/PUT /otrocargofacts/1.json
  def update
    respond_to do |format|
      if @otrocargofact.update(otrocargofact_params)
        format.html { redirect_to @otrocargofact, notice: 'Otrocargofact was successfully updated.' }
        format.json { render :show, status: :ok, location: @otrocargofact }
      else
        format.html { render :edit }
        format.json { render json: @otrocargofact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otrocargofacts/1
  # DELETE /otrocargofacts/1.json
  def destroy
    @otrocargofact.destroy
    respond_to do |format|
      format.html { redirect_to otrocargofacts_url, notice: 'Otrocargofact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otrocargofact
      @otrocargofact = Otrocargofact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otrocargofact_params
      params.require(:otrocargofact).permit(:otrocargo_id, :factura_id, :edesal_id, :concepto_id, :importe, :ffactura, :ecargo_id)
    end
end
