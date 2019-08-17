module ApplicationHelper

    ## app/controllers/application_controller.rb で
    ## で helper_method :current_user,:logged_in?を定義のため、重複機能はコメントへ
    ##def current_user
    ##    @current_user ||= User.find_by(id: session[:user_id])
    ##end
    
    ##def logged_in?
    ## !current_user.nil?
    #end
end
