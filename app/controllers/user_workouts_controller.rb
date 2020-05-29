class UserWorkoutsController < ApplicationController

    def new
        @workout = Workout.find_by_id(params[:workout_id])
     
        @user_workout = @workout.build_user_workout
    end

    def index

    end



end
