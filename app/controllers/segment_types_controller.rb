class SegmentTypesController < ApplicationController
  before_action :set_segment_type, only: [:show, :edit, :update, :destroy]

  # GET /segment_types
  # GET /segment_types.json
  def index
    @segment_types = SegmentType.all
  end

  # GET /segment_types/1
  # GET /segment_types/1.json
  def show
  end

  # GET /segment_types/new
  def new
    @segment_type = SegmentType.new
  end

  # GET /segment_types/1/edit
  def edit
  end

  # POST /segment_types
  # POST /segment_types.json
  def create
    @segment_type = SegmentType.new(segment_type_params)

    respond_to do |format|
      if @segment_type.save
        format.html { redirect_to @segment_type, notice: 'Segment type was successfully created.' }
        format.json { render :show, status: :created, location: @segment_type }
      else
        format.html { render :new }
        format.json { render json: @segment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segment_types/1
  # PATCH/PUT /segment_types/1.json
  def update
    respond_to do |format|
      if @segment_type.update(segment_type_params)
        format.html { redirect_to @segment_type, notice: 'Segment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @segment_type }
      else
        format.html { render :edit }
        format.json { render json: @segment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segment_types/1
  # DELETE /segment_types/1.json
  def destroy
    @segment_type.destroy
    respond_to do |format|
      format.html { redirect_to segment_types_url, notice: 'Segment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment_type
      @segment_type = SegmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def segment_type_params
      params.require(:segment_type).permit(:name)
    end
end
