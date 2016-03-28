class CensusDatesController < ApplicationController
  before_action :set_census_date, only: [:show, :edit, :update, :destroy]

  # GET /census_dates
  # GET /census_dates.json
  def index
    @census_dates = CensusDate.all
  end

  # GET /census_dates/1
  # GET /census_dates/1.json
  def show
  end

  # GET /census_dates/new
  def new
    @census_date = CensusDate.new
  end

  # GET /census_dates/1/edit
  def edit
  end

  # POST /census_dates
  # POST /census_dates.json
  def create
    @census_date = CensusDate.new(census_date_params)

    respond_to do |format|
      if @census_date.save
        format.html { redirect_to @census_date, notice: 'Census date was successfully created.' }
        format.json { render :show, status: :created, location: @census_date }
      else
        format.html { render :new }
        format.json { render json: @census_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /census_dates/1
  # PATCH/PUT /census_dates/1.json
  def update
    respond_to do |format|
      if @census_date.update(census_date_params)
        format.html { redirect_to @census_date, notice: 'Census date was successfully updated.' }
        format.json { render :show, status: :ok, location: @census_date }
      else
        format.html { render :edit }
        format.json { render json: @census_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /census_dates/1
  # DELETE /census_dates/1.json
  def destroy
    @census_date.destroy
    respond_to do |format|
      format.html { redirect_to census_dates_url, notice: 'Census date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_census_date
      @census_date = CensusDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def census_date_params
      params.require(:census_date).permit(:date)
    end
end
