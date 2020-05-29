class WorkoutsController < ApplicationController
    before_action :require_login

    def index
        @workouts = Workout.all
    end

    
    def new
        @workout = Workout.new
        @workout.moves.build
        @workout.moves.build
        @workout.moves.build
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

    def show
        @workout = Workout.find_by(id: params[:id])
    end


    private


    def workout_params
        params.require(:workout).permit(:name, :sets, :reps, :difficulty, :category_id, category_attributes: [:name])
    end


end
