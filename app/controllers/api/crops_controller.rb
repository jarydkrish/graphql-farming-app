class Api::CropsController < ApplicationController
  before_action :set_crop, only: %i[ show update destroy ]

  # GET /crops
  # GET /crops.json
  def index
    @crops = Crop.all
  end

  # GET /crops/1
  # GET /crops/1.json
  def show
  end

  # POST /crops
  # POST /crops.json
  def create
    @crop = Crop.new(crop_params)

    if @crop.save
      render :show, status: :created, location: api_crop_url(@crop)
    else
      render json: @crop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crops/1
  # PATCH/PUT /crops/1.json
  def update
    if @crop.update(crop_params)
      render :show, status: :ok, location: api_crop_url(@crop)
    else
      render json: @crop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crops/1
  # DELETE /crops/1.json
  def destroy
    @crop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crop
      @crop = Crop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crop_params
      params.permit(:name)
    end
end
