class Api::V1::DaysController < ApplicationController
    def index
      if params[:user_id]
        @days = User.find(params[:user_id]).days.order('id ASC')
      else
          @days = Day.all.order('id ASC')
      end
      render json: @days
    end

    def show
      @day = Day.find(params[:id])
      render json: @day
    end

    def create
        @day = Day.create(day_params) 
        render json: @day
    end


    def update
	    @day = Day.find(params[:id])
        @day.update(day_params) 
        render json: @day  
    end

    private 

    def day_params
	    params.require(:day).permit(:name, :completed)
    end

end
