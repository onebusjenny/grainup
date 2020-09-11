class Api::V1::WatersController < ApplicationController
    def index
        @waters = Water.all
        render json: @waters, status: 200
    end

    def show
        @water = Water.find(params[:id])
        render json: @water, status:200
    end
end
