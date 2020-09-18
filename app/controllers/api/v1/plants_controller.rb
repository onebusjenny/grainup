class Api::V1::PlantsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        @plants = Plant.all
        render json: @plants, status: 200
    end

    def create
        @plant = Plant.create(plant_params)
        @waters = Water.all
        render json: @plant, status: 200
    end

    def show
        @plant = Plant.find(params[:id])
        render json: @plant, status:200
    end

    private
        def plant_params
            params.require(:plant).permit(:name, :amount, :date)
        end
end
