class Api::V1::DayskillsController < ApplicationController
    def index
      @dayskills = Dayskill.all.order('id ASC')
      render json: @dayskills
    end


    def create
      @daycount = params[:daycount].to_i
      @newskills = current_user.skills
      @dayname = Date.today.strftime("%a, %b %e %Y")
       @daycount.times do |idx|
          Day.create(:name => @dayname, :user_id => current_user.id) do |day|
          
          @newskills.each do |skill|
            day.skills << skill
          end
          @dayname = Date.parse(@dayname).next_day.strftime("%a, %b %e %Y")
        end
      end
        render json: @dayskills
    end

    def update
	    @dayskill = Dayskill.find(params[:id])
        @dayskill.update(dayskill_params) 
        render json: @dayskill  
    end


  def show
      @dayskill = Dayskill.find(params[:id])
      render json: @dayskill
  end


    private 

    def dayskill_params
	    params.require(:dayskill).permit(:completed)
    end

end
