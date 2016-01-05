class LibationsController < ApplicationController
  before_action :set_libation, only: [:show, :edit, :update, :destroy]

  # GET /libations
  # GET /libations.json
  def index
    @libations = Libation.all
  end

  # GET /libations/1
  # GET /libations/1.json
  def show
  end

  # GET /libations/new
  def new
    @libation = Libation.new
  end

  # GET /libations/1/edit
  def edit
  end

  # POST /libations
  # POST /libations.json
  def create
    @libation = Libation.new(libation_params)

    respond_to do |format|
      if @libation.save
        format.html { redirect_to @libation, notice: 'Libation was successfully created.' }
        format.json { render :show, status: :created, location: @libation }
      else
        format.html { render :new }
        format.json { render json: @libation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libations/1
  # PATCH/PUT /libations/1.json
  def update
    respond_to do |format|
      if @libation.update(libation_params)
        format.html { redirect_to @libation, notice: 'Libation was successfully updated.' }
        format.json { render :show, status: :ok, location: @libation }
      else
        format.html { render :edit }
        format.json { render json: @libation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libations/1
  # DELETE /libations/1.json
  def destroy
    @libation.destroy
    respond_to do |format|
      format.html { redirect_to libations_url, notice: 'Libation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libation
      @libation = Libation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libation_params
      params.require(:libation).permit(:libation_name, :measurement, :container_type, :measurement_type, :country_made, :company_name, :libation_type, :website)
    end
end
