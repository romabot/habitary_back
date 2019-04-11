class Api::V1::SkillsController < ApplicationController
   
   def index
      # if params[:user_id]
        @skills = User.find(current_user.id).skills
      # else
      #     @skills = Skill.all
      # end
      render json: @skills
    end
 
    def create
        @skill = Skill.create(skill_params)
        if @skill.valid?
            render json: { skill: @skill }, status: :created
        else
            render json: { error: 'Failed to create skill', data: @skill.errors }, status: :not_acceptable
        end
    end

    private
    def skill_params
        params.require(:skill).permit(:name, :target, :user_id, :hard)
    end

  def show
      @skill = Skill.find(params[:id])
      render json: @skill
  end





end
