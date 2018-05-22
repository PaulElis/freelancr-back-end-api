class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
    # render json: {users: @users, developer_contracts: @user.developer_contracts, contractor_contracts: @user.contractor_contracts}
  end

  def create
    @user = User.new(user_params)
    # @user = User.new(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], password: params[:password])

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
    # byebug
    params.permit(:username, :first_name, :last_name, :password)
  end

  # {"username"=>"tron", "first_name"=>"Tron", "last_name"=>"Tron", "password"=>"1234", "controller"=>"api/v1/users", "action"=>"create", "user"=>{"username"=>"tron", "first_name"=>"Tron", "last_name"=>"Tron"}}

end
