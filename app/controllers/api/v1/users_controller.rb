class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    # @user = User.new(user_params)
    # byebug
    @user = User.new(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], password: params[:password])

    if @user.save
      token = encode({user_id: @user.id})
      render json: {user: @user,
                    jwt: token
                    }
    else
      render json: {error: "Ya dun goofed!"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password_digest)
  end

end
