class UsersController < ApplicationController

    before_action :check_logged_in

    def show
        @user = User.find(params[:id])
    end

    private

    def check_logged_in
        if !user_signed_in?
            flash[:error] = "You must be logged in to do that!"
            redirect_to root_path
        end
    end
end
