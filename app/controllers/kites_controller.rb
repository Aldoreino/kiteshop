class KitesController < ApplicationController
	def index # defines the index action
		@kites = Kite.all
	end
	def show
		@kite = Kite.find(params[:id])
	end
	def new 
		@kite = Kite.new
	end
	def create
		@kite = Kite.new(params.require(:kite).permit(:name, :color, :origin, :quantity))

			if $kite.save
				redirect_to kites_path
			else
				render "new"
			end
		end
	end