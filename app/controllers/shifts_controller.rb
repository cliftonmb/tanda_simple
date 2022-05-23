class ShiftsController < ApplicationController

  def create
    shift = Shift.new(
      user_id: params[:user_id],
      start: params[:start],
      finish: params[:finish],
      break_length: params[:break_length]
    )
    shift.save
    render json: shift
  end

end
