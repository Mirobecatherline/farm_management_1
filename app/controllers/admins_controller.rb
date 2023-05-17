class AdminsController < ApplicationController
    before_action :authenticate_user!


    def dashboard
        # your admin dashboard logic
        @active_menu=true
    end

    def update_active_menu
        @active_menu = params[:active_menu]
        render json: { success: true }
    end

    def users
        @users = User.all
    end
    
    
end
