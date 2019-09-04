class WelcomeindiaController < ApplicationController
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
    def create
      @player = Player.new(player_params)
      @player.save
    end

  	private
  		def country_params
			params.require(:country).permit(:name)
  			
  		end
end
