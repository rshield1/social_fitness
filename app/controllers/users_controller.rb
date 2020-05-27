class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        binding.pry
        @user = User.new(user_params)
    end




    def user_params
        params.require(:user).permit(:username, :password)
    end
end
