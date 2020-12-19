class ApplicationController < ActionController::Base
    
    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in?
            redirect_to login_url
        end
    end
    
    def count(user)
        @count_microposts = user.microposts.count
        @user_followings = user.followings.count
        @user_followers = user.followers.count
    end
end
