class WorkoutsController < ApplicationController
    def new
        @workout = Workout.new
        @workout.post.build
    end
end
