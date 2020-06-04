class CommentsController < ApplicationController
    before_action :require_login

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
            redirect_to workout_path(@comment.workout_id)
        else
            render :new
        end
    end

    def show
        @comment = Comment.find_by_id(params[:id])
    end

    def edit
        @comment = Comment.find_by(id: params[:id])
    end

    def index
        # checks if nested
        if @workout = Workout.find_by_id(params[:workout_id])
            @comments = @workout.comments
        else
            @comments = Comment.all
        end
    end

    def comments_params
        params.require(:comment).permit(:workout_id, :title, :content)
    end




    
end
