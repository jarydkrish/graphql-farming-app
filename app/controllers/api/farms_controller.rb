class Api::FarmsController < ApplicationController
  before_action :set_farm, only: %i[ show update destroy ]

  # GET /farms
  # GET /farms.json
  def index
    @farms = Farm.all
  end

  # GET /farms/1
  # GET /farms/1.json
  def show
  end

  # POST /farms
  # POST /farms.json
  def create
    @farm = Farm.new(farm_params)

    if @farm.save
      render :show, status: :created, location: api_farm_url(@farm)
    else
      render json: @farm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farms/1
  # PATCH/PUT /farms/1.json
  def update
    if @farm.update(farm_params)
      render :show, status: :ok, location: api_farm_url(@farm)
    else
      render json: @farm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /farms/1
  # DELETE /farms/1.json
  def destroy
    @farm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm
      @farm = Farm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farm_params
      params.permit(:name)
    end
end
