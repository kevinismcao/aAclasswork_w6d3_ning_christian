class UsersController < ApplicationController

    def index
        if params[:username]
            user = User.where(users: {username: params[:username]})
            render json: user
        else
            render json: User.all
        end
    end

    def create
       user = User.new(user_params)
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
        if user && user.update(user_params)
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

   

    private
    
    def user_params
        params.require(:user).permit(:username)
    end

end
