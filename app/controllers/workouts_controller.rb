class WorkoutsController < ApplicationController
    before_action :require_login
    before_action :set_workout,only: [:edit, :update, :show, :destroy]
    

    def index
        @workouts = Workout.all
        if !params[:user].blank?
            @workouts = Workout.all
        elsif !params[:date].blank?
            if params[:date] == "Today"
              @workouts = Workout.today
            else
              @workouts = Workout.past
            end
        else   # if no filters are applied, show all workouts by most comments
            @workouts = Workout.order_by_comments
        end
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
        @comments = @workout.comments
    end

    def edit
        if session[:user_id] != @workout.user_id
            redirect_to user_path(session[:user_id])
        end 
    end

    def update
            if @workout.update(workout_params)
                redirect_to workouts_path
            else
                render :edit
            end
    end

    def destroy 
        if session[:user_id] != @workout.user_id
            redirect_to user_path(session[:user_id])
        else 
            @workout.destroy
            redirect_to workouts_path
        end
    end

    private


    def workout_params
        params.require(:workout).permit(:title, :description, :time, :difficulty, category_attributes: [:name])
    end

    def set_workout
        @workout = Workout.find_by(id: params[:id])
    end


end
