class ApplicationController < ActionController::Base
    beore_filter :set_current_user
    protected
    def set_current_user
        redirect_to login_path
    end 
    protect_from_forgery
end
