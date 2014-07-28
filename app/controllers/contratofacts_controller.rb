class ContratofactsController < ApplicationController
  before_action :set_contratofact, only: [:show, :edit, :update, :destroy]

  # GET /contratofacts
  # GET /contratofacts.json
  def index
    @contratofacts = Contratofact.all
  end

  # GET /contratofacts/1
  # GET /contratofacts/1.json
  def show
  end

  # GET /contratofacts/new
  def new
    @contratofact = Contratofact.new
  end

  # GET /contratofacts/1/edit
  def edit
  end

  # POST /contratofacts
  # POST /contratofacts.json
  def create
    @contratofact = Contratofact.new(contratofact_params)

    respond_to do |format|
      if @contratofact.save
        format.html { redirect_to @contratofact, notice: 'Contratofact was successfully created.' }
        format.json { render :show, status: :created, location: @contratofact }
      else
        format.html { render :new }
        format.json { render json: @contratofact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratofacts/1
  # PATCH/PUT /contratofacts/1.json
  def update
    respond_to do |format|
      if @contratofact.update(contratofact_params)
        format.html { redirect_to @contratofact, notice: 'Contratofact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratofact }
      else
        format.html { render :edit }
        format.json { render json: @contratofact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratofacts/1
  # DELETE /contratofacts/1.json
  def destroy
    @contratofact.destroy
    respond_to do |format|
      format.html { redirect_to contratofacts_url, notice: 'Contratofact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratofact
      @contratofact = Contratofact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratofact_params
      params.require(:contratofact).permit(:contrato_id, :factura_id, :cuenta_id, :nombre, :tcuit_id, :iibb, :tiibb_id, :tperfact_id, :econtrato_id)
    end
end
