class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
  
        if @user.save
            redirect_to new_user_path

        else
            render :new, status: :unprocessable_entity
        end

    end


    def edit
        @user = User.find_by(id: params[:id])
    end


    def update

    end



    private

    def user_params
    params.require(:user).permit(:user_name, :email, :password_digest)
    end

end
