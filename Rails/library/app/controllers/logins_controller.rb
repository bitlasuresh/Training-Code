class LoginsController < ApplicationController
	def index
		@login = Login.new
	end
	def show	
	end
	def new
  	end
	def create
	    @logins = Login.new(login_params)
	    	respond_to do |format|
	      		if @login.save
	        		format.html { redirect_to @login, notice: 'Area was successfully created.' }
	        		format.json { render :show, status: :created, location: @login }
	      		else
	        		format.html { render :new }
	        		format.json { render json: @login.errors, status: :unprocessable_entity }
	      	end
    	end
  	end
  	private
  		def login_params
  			params.require(:login).permit(:username,:password)
  			
  		end


end
