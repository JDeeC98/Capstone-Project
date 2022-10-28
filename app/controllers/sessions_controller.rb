class SessionsController < ApplicationController

    def create

        user = User.find_by!(email: params[:email])

        if user&.authenticate(params[:password])
            render json: user, status: :ok
        else
            render json: { error: "Invalid Password or Username" }, status: :unauthorized
        end
    end
end