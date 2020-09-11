class Api::V1::PlantsController < ApplicationController
    def index
        @plants = Plant.all
        render json: @plants, status: 200
    end

    def create
        @plant = Plant.create(plant_params)
        @waters = Water.all
        render json: @plants, status: 200
    end

    def show
        @plant = Plant.find(params[:id])
        render json: @plants, status:200
    end
end
