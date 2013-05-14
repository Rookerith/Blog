class WelcomeController < ApplicationController
  def show
  	@url_params = params[:test]
  end

  def create
	respond_to do |format|
		format.html { redirect_to welcome_path }
	end
  end
end
