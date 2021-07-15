class Api::PlantingsController < ApplicationController
  before_action :set_planting, only: %i[ show update destroy ]

  # GET /plantings
  # GET /plantings.json
  def index
    @plantings = Planting.all
  end

  # GET /plantings/1
  # GET /plantings/1.json
  def show
  end

  # POST /plantings
  # POST /plantings.json
  def create
    @planting = Planting.new(planting_params)

    if @planting.save
      render :show, status: :created, location: api_planting_url(@planting)
    else
      render json: @planting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plantings/1
  # PATCH/PUT /plantings/1.json
  def update
    if @planting.update(planting_params)
      render :show, status: :ok, location: api_planting_url(@planting)
    else
      render json: @planting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plantings/1
  # DELETE /plantings/1.json
  def destroy
    @planting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planting
      @planting = Planting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planting_params
      params.permit(:crop_id, :farm_field_id)
    end
end
