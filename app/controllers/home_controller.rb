class HomeController < ApplicationController
	before_action :check_user
	before_action :check_valid_user, only: [:wall]

	def wall
	end

	def show
	end

	private
	def check_user
		@user = User.find_by(id: params[:user_id])
		redirect_to root_path unless @user.present?
	end

	def check_valid_user
		redirect_to root_path unless current_user.id == @user.id
	end
end
