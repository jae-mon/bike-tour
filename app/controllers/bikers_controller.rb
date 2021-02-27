class BikersController < ApplicationController
  before_action :set_biker, only: %i[ show edit update destroy ]

  # GET /bikers or /bikers.json
  def index
    @bikers = Biker.all
  end

  # GET /bikers/1 or /bikers/1.json
  def show
  end

  # GET /bikers/new
  def new
    @biker = Biker.new
  end

  # GET /bikers/1/edit
  def edit
  end

  # POST /bikers or /bikers.json
  def create
    @biker = Biker.new(biker_params)

    respond_to do |format|
      if @biker.save
        format.html { redirect_to @biker, notice: "Biker was successfully created." }
        format.json { render :show, status: :created, location: @biker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @biker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bikers/1 or /bikers/1.json
  def update
    respond_to do |format|
      if @biker.update(biker_params)
        format.html { redirect_to @biker, notice: "Biker was successfully updated." }
        format.json { render :show, status: :ok, location: @biker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @biker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bikers/1 or /bikers/1.json
  def destroy
    @biker.destroy
    respond_to do |format|
      format.html { redirect_to bikers_url, notice: "Biker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biker
      @biker = Biker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def biker_params
      params.require(:biker).permit(:firstname, :lastname, :city, :state, :geolocation, :avatar)
    end
end
