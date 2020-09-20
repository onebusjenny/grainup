class Api::V1::WatersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @waters = Water.all
        render json: @waters, status: 200
    end

    def create
        @water = Water.create(water_params)
        render json: @water, status: 200
    end

    def show
        @water = Water.find(params[:id])
        render json: @water, status:200
    end

    private
    def water_params
        params.require(:water).permit(:entry,:plant_id)
    end
end
