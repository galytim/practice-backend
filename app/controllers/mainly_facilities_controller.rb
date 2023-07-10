class MainlyFacilitiesController < ApplicationController
  before_action :set_mainly_facility, only: %i[ show edit update destroy ]

  # GET /mainly_facilities or /mainly_facilities.json
  def index
    @mainly_facilities = MainlyFacility.all
    render json: @mainly_facilities
  end

  # GET /mainly_facilities/1 or /mainly_facilities/1.json
  def show
    render json: @mainly_facility
  end

  # GET /mainly_facilities/new
  def new
    @mainly_facility = MainlyFacility.new
  end

  # GET /mainly_facilities/1/edit
  def edit
  end

  # POST /mainly_facilities or /mainly_facilities.json
  def create
    @mainly_facility = MainlyFacility.new(mainly_facility_params)

    respond_to do |format|
      if @mainly_facility.save
        format.html { redirect_to mainly_facility_url(@mainly_facility), notice: "Mainly facility was successfully created." }
        format.json { render :show, status: :created, location: @mainly_facility }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mainly_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainly_facilities/1 or /mainly_facilities/1.json
  def update
    respond_to do |format|
      if @mainly_facility.update(mainly_facility_params)
        format.html { redirect_to mainly_facility_url(@mainly_facility), notice: "Mainly facility was successfully updated." }
        format.json { render :show, status: :ok, location: @mainly_facility }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mainly_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainly_facilities/1 or /mainly_facilities/1.json
  def destroy
    @mainly_facility.destroy

    respond_to do |format|
      format.html { redirect_to mainly_facilities_url, notice: "Mainly facility was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainly_facility
      @mainly_facility = MainlyFacility.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mainly_facility_params
      params.require(:mainly_facility).permit(:name, :code, :initCost, :dateStartUsing, :dateEndUsing, :codeEndUsing, :regulatoryTermServices, :accumulatedDepreciaton, :residualValue)
    end
end
