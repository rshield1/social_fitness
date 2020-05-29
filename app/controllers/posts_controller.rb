class PostsController < ApplicationController

    def new
        @workout = Workout.find_by_id(params[:workout_id])
     
        @user_workout = @workout.build_post
    end

    def index

    end



end
