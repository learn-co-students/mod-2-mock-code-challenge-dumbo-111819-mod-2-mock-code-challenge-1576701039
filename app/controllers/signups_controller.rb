class SignupsController < ApplicationController
  
  def new
    @signup = Signup.new
  end

  def create
    signup_params = params.require(:signup).permit(:camper_id, :activity_id, :time)
    @signup = Signup.create(signup_params)
    @camper = @signup.camper
    if @signup.valid?
      redirect_to camper_path(@camper)
    else
      flash[:errors] = @signup.errors.full_messages
      redirect_to new_signup_path
    end
  end

end
