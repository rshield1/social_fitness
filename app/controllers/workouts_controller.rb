class WorkoutsController < ApplicationController
    def new
        @workout = Workout.new
        @post = @workout.post.build
    end

    def create 
        @workout = Workout.new(workout_params)
        @workout.user_id = session[:user.id]
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


end
