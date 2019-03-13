class Api::V1::DaysController < ApplicationController
    def index
      @days = Day.all
      render json: @days
    end

    def show
      @day = Day.find(params[:id])
      render json: @day
    end

      def create
        @squirrel = Squirrel.create(squirrel_params) 
        render json: @squirrel
    end


    def update
	    @squirrel = Squirrel.find(params[:id])
        @squirrel.update(squirrel_params) 
        render json: @squirrel  
    end

    def destroy
	    @squirrel = Squirrel.find(params[:id]) 
        @squirrel.destroy
        render json: @squirrel
    end

    private 

    def squirrel_params
	    params.require(:squirrel).permit(:name, :bio, :img, :caught)
    end

end
