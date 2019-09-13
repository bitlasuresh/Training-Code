class WelcomeindiaController < ApplicationController
	def new
      
    end

  def index
		@players = Country.all
	end	
  
  	def create
  		@country = Country.new(country_params)
  		@country.save
  		redirect_to new_welcomeindium_path
  	end
  	def show
   		@country = Country.find(params[:id])
  	end

   	private
  		def country_params
			params.require(:country).permit(:name)
  			
  		end
end
