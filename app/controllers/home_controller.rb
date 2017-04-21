class HomeController < ApplicationController
  def index
  	# user_signed_in?
  	redirect_to banks_path
  end
end
