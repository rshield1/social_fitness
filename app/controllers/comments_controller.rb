class CommentsController < ApplicationController
    before_action :require_login
    before_action :set_comment, only: [:edit, :show]

    def new
        if @workout = Workout.find_by_id(params[:workout_id])
            @comment = @workout.comments.build
          else
            @comment = Comment.new
          end
    end

    def create
        @comment = Comment.new(comments_params)
        @comment.user_id = session[:user_id]
            if @comment.save
                redirect_to workouts_path
            else
                render :new
            end
    end

    def show
    end

    def edit
    end

    def index
        if @workout = Workout.find_by_id(params[:workout_id])
            @comments = @workout.comments
        else
            @comments = Comment.all
        end
    end
    
    private

    def comments_params
        params.require(:comment).permit(:workout_id, :title, :content)
    end

    def set_comment
        @comment = Comment.find_by(id: params[:id])
    end
end
