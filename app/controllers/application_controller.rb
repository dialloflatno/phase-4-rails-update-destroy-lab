class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :plant, only:[:show,:update,:destroy]

end


private

    def plant
      Plant.find(params[:id])
    end 
    def add_plant
      Plant.create(plant_params)
    end 

    def plant_params
      params.permit(:name, :image, :price, :is_in_stock)
    end