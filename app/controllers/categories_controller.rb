class CategoriesController < ApplicationController

    def index
        #it hits the database but filter out the duplicated
        @categories = Category.filter_duplicates
        @workouts = Workout.all
    end

end
