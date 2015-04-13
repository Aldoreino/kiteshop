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
		def edit
				@kite = Kite.find(params[:id])
		end
		def update
			@update = Kite.find(params[:id])

			if @kite.update_attributes(params.require(:kite).permit(:name, :color, :origin, :quantity))
				redirect_to kites_path
			else
				render "edit"
			end
			def destroy
				@kite = Kite.find(params[:id])
				@kite.destroy
				redirect_to kites_path
			end
	end
end