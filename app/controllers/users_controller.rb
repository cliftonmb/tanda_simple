class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email_address: params[:email_address],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(email_address: params[:email_address])
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]
    user.save
    render json: user
  end
end
