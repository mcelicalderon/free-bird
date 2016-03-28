class DayDescriptionsController < ApplicationController
  before_action :set_day_description, only: [:show, :edit, :update, :destroy]

  # GET /day_descriptions
  # GET /day_descriptions.json
  def index
    @day_descriptions = DayDescription.all
  end

  # GET /day_descriptions/1
  # GET /day_descriptions/1.json
  def show
  end

  # GET /day_descriptions/new
  def new
    @day_description = DayDescription.new
  end

  # GET /day_descriptions/1/edit
  def edit
  end

  # POST /day_descriptions
  # POST /day_descriptions.json
  def create
    @day_description = DayDescription.new(day_description_params)

    respond_to do |format|
      if @day_description.save
        format.html { redirect_to @day_description, notice: 'Day description was successfully created.' }
        format.json { render :show, status: :created, location: @day_description }
      else
        format.html { render :new }
        format.json { render json: @day_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_descriptions/1
  # PATCH/PUT /day_descriptions/1.json
  def update
    respond_to do |format|
      if @day_description.update(day_description_params)
        format.html { redirect_to @day_description, notice: 'Day description was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_description }
      else
        format.html { render :edit }
        format.json { render json: @day_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_descriptions/1
  # DELETE /day_descriptions/1.json
  def destroy
    @day_description.destroy
    respond_to do |format|
      format.html { redirect_to day_descriptions_url, notice: 'Day description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_description
      @day_description = DayDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_description_params
      params.require(:day_description).permit(:date, :temperature, :description)
    end
end
