class WorkoutsController < ApplicationController
    def new
        @workout = Workout.new
        @workout.build_category
    end

    def create 
        binding.pry
        
        @workout = Workout.new(workout_params)
        @workout.user_id = session[:user_id]
    if @workout.save!
        redirect_to workout_path(@workout)
    else
        render :new
    end

    end


    private


    def workout_params
        params.require(:workout).permit(:name, :sets, :reps, :difficulty, :category_id, category_attributes: [:name])
    end


end
