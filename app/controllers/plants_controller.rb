class PlantsController < ApplicationController

  # GET /plants
  def index
    plants = Plant.all
    render json: plants, status: :ok
  end

  # GET /plants/:id
  def show
    render json: plant, status: :found
  end

  # POST /plants
  def create
    render json: add_plant, status: :created
  end

  def update
    uplant = plant
    uplant.update(plant_params)
    render json: uplant, status: 203
  end

  def destroy
   unseed = plant
   unseed.delete
   render json: unseed, status: :no_content
  end

end
