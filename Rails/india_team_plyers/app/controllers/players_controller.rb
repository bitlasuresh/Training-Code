class PlayersController < ApplicationController
	def new
		@player = Player.new
	end

	def create
  		@player = Players.new(player_params)
  		@player.save
  	end
end
