class SignupsController < ApplicationController

    def index
        @signups = Signup.all
    end

    def new
        @signup = Signup.new
    end

    def create
        @signup = Camper.create(signup_params)

        if (@signup.valid?)
            redirect_to signups_path
        else
            flash[:errors] = @signup.errors.full_messages
            redirect_to new_signup_path
        end
    end


private

    def signup_params(*args)
        params.require(:signup).permit(*args)
    end

end
