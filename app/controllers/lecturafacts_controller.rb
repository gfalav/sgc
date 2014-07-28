class LecturafactsController < ApplicationController
  before_action :set_lecturafact, only: [:show, :edit, :update, :destroy]

  # GET /lecturafacts
  # GET /lecturafacts.json
  def index
    @lecturafacts = Lecturafact.all
  end

  # GET /lecturafacts/1
  # GET /lecturafacts/1.json
  def show
  end

  # GET /lecturafacts/new
  def new
    @lecturafact = Lecturafact.new
  end

  # GET /lecturafacts/1/edit
  def edit
  end

  # POST /lecturafacts
  # POST /lecturafacts.json
  def create
    @lecturafact = Lecturafact.new(lecturafact_params)

    respond_to do |format|
      if @lecturafact.save
        format.html { redirect_to @lecturafact, notice: 'Lecturafact was successfully created.' }
        format.json { render :show, status: :created, location: @lecturafact }
      else
        format.html { render :new }
        format.json { render json: @lecturafact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecturafacts/1
  # PATCH/PUT /lecturafacts/1.json
  def update
    respond_to do |format|
      if @lecturafact.update(lecturafact_params)
        format.html { redirect_to @lecturafact, notice: 'Lecturafact was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecturafact }
      else
        format.html { render :edit }
        format.json { render json: @lecturafact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecturafacts/1
  # DELETE /lecturafacts/1.json
  def destroy
    @lecturafact.destroy
    respond_to do |format|
      format.html { redirect_to lecturafacts_url, notice: 'Lecturafact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecturafact
      @lecturafact = Lecturafact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecturafact_params
      params.require(:lecturafact).permit(:lectura_id, :factura_id, :medidor_id, :tlectura_id, :flectura, :tconsumo_id, :lectura, :ctelect, :consumo)
    end
end
