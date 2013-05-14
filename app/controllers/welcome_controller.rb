class WelcomeController < ApplicationController
  def index
  	@url_params = params[:user]
  end
end
