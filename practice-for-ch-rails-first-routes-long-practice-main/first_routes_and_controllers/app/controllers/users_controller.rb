class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
       user = User.new(params.require(:user).permit(:name, :email))
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        wildcard = params[:id]
        user = User.find(wildcard)
        render json: user
    end

    def update
        wildcard = params[:id]
        user = User.find(wildcard)
        if user && user.update(params.require(:user).permit(:email))
            redirect_to user_url(user.id)
        else  
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        wildcard = params[:id]
        user = User.find(wildcard)
        user.destroy
        redirect_to users_url

    end
end
