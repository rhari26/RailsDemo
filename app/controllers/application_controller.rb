class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!
  def welcome

  	if current_user.present?
  	    respond_to do |format|
  
  	 		format.html{redirect_to wall_path(current_user)}
  	 		format.json
  	    end
  	 else
  	 	respond_to do |format|
  	 	    format.html{redirect_to  new_user_session_path, notice: "Please Sign In."}
  	    end
  	end
  end



end
