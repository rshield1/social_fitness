class CategoriesController < ApplicationController
    before_action :require_login
    def index
        #it hits the database but filter out the duplicated
        @categories = Category.filter_duplicates
        @workouts = Workout.all
        
    end

end
