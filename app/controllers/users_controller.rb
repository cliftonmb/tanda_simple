class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end
  
  def show
    user = User.find_by(id: current_user.id)
    render json: user
  end
  
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
    user = User.find_by(id: current_user.id)
    
    if params.include? "password"
      user.password = params[:password] || user.password
      user.password_confirmation = params[:password_confirmation] || user.password_confirmation
    elsif params[:organization_id] == 0 
      user.organization_id = nil
    else
      user.organization_id = params[:organization_id] || user.organization_id
    end
    
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
