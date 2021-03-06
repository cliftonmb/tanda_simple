class OrganizationsController < ApplicationController
  
  def index
    organizations = Organization.all 
    render json: organizations
  end

  def show
    organization = Organization.find_by(id: params[:id])
    render json: organization
  end
  
  def create
    organization = Organization.new(
      name: params[:name],
      hourly_rate: params[:hourly_rate]
    )
    organization.save
    render json: organization
  end

  def update
    organization = Organization.find_by(id: params[:id])
    organization.name = params[:name] || organization.name
    organization.hourly_rate = params[:hourly_rate] || organization.hourly_rate
    organization.save
    render json: organization
  end

  def destroy
    organization = Organization.find_by(id: params[:id])
    organization.delete
    render json: {message: "Organization Deleted"}
  end
end
