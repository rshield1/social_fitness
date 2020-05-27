class WorkoutsController < ApplicationController
    def new
        @workout = Workout.new
        @workout.post.build
    end

    def create 
        @workout = Workout.new(workout_params)
    if @workout.save
        redirect_to workout_path(@workout)
    else
        render :new
    end

    end


    private


    def workout_params
        params.require(:workout).permit(:name, :type, :sets, :reps, :difficulty, :post_id, post_attributes: [:title, :content])
end
