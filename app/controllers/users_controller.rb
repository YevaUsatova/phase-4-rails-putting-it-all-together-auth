class UsersController < ApplicationController
    def create
        user = User.create(params_user)
        #session[:user_id] = user.id
        if user.valid?
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def params_user
        params.permit(:username, :password, :image_url, :bio, :password_confirmation)
    end
end
