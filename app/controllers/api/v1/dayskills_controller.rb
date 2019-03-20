class Api::V1::DayskillsController < ApplicationController
    def index
      @dayskills = Dayskill.all
      render json: @dayskills
    end


    def create
      @newskills = Skill.all
       7.times do |idx|
          Day.create(:name => "Day #{idx+1}", :user_id => current_user.id) do |day|
          
          @newskills.each do |skill|
            day.skills << skill
          end

        end
      end
        render json: @dayskills
    end

  def show
      @dayskill = Dayskill.find(params[:id])
      render json: @dayskill
  end

end
