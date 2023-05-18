class AdminsController < ApplicationController
    before_action :authenticate_user!


    def dashboard
        # your admin dashboard logic
        @active_menu=true
    end

    def users
        @users = User.all
    end
    
    
end
