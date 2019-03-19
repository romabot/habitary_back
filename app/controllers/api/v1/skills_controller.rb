class Api::V1::SkillsController < ApplicationController
   
   def index
      if params[:user_id]
        @skills = User.find(current_user.id).skills
      else
          @skills = Skill.all
      end
      render json: @skills
    end

  def show
      @skill = Skill.find(params[:id])
      render json: @skill
  end
end
