class ShiftsController < ApplicationController

  def index
    shifts = Shift.all
    render json: shifts.sort_by(&:start)
  end

  def create
    shift = Shift.new(
      user_id: current_user.id,
      start: params[:start],
      finish: params[:finish],
      break_length: params[:break_length]
    )
    shift.save
    render json: shift
  end

  def destroy
    shifts = Shift.where(user_id: current_user.id)
    # shifts = Shift.all
    shifts.delete shifts
    render json: {message: "All shifts deleted"}
  end

end
