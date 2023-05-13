class AdminsController < ApplicationController
    before_action :authenticate_user!


    def dashboard
        # your admin dashboard logic
    end

    def users
        @users = User.all
    end
    
    
end
