class Api::FarmFieldsController < ApplicationController
  before_action :set_farm_field, only: %i[ show update destroy ]

  # GET /farm_fields
  # GET /farm_fields.json
  def index
    @farm_fields = FarmField.all
  end

  # GET /farm_fields/1
  # GET /farm_fields/1.json
  def show
  end

  # POST /farm_fields
  # POST /farm_fields.json
  def create
    @farm_field = FarmField.new(farm_field_params)

    if @farm_field.save
      render :show, status: :created, location: api_farm_field_url(@farm_field)
    else
      render json: @farm_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farm_fields/1
  # PATCH/PUT /farm_fields/1.json
  def update
    if @farm_field.update(farm_field_params)
      render :show, status: :ok, location: api_farm_field_url(@farm_field)
    else
      render json: @farm_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /farm_fields/1
  # DELETE /farm_fields/1.json
  def destroy
    @farm_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm_field
      @farm_field = FarmField.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farm_field_params
      params.permit(:name, :farm_id)
    end
end
