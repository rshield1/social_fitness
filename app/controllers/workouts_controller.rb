class WorkoutsController < ApplicationController
    before_action :require_login

    def index
        @workouts = Workout.order_by_comments
    
    end

    
    def new
        @workout = Workout.new     
        @workout.build_category
    end

    def create 
        @workout = Workout.new(workout_params)
        @workout.user_id = session[:user_id]
    if @workout.save
        redirect_to workout_path(@workout)
    else
        render :new
    end
    end

    def show
        @workout = Workout.find_by(id: params[:id])
    end

    def edit
        @workout = Workout.find_by(id: params[:id])
    end

    def update
        @workout = Workout.find_by(id: params[:id])
        binding.pry
        if @workout.update(workout_params)
            redirect_to workouts_path
        else
            render :edit
        end


    end


    private


    def workout_params
        params.require(:workout).permit(:title, :description, :time, :difficulty, category_attributes: [:name])
    end


end
