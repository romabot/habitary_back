class Api::V1::DayskillsController < ApplicationController
    def index
      @dayskills = Dayskill.all
      render json: @dayskills
  end

  def show
      @dayskill = Dayskill.find(params[:id])
      render json: @dayskill
  end

end
