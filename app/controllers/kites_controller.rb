class KitesController < ApplicationController
end
	def index # defines the index action
		@kites = Kite.all
	end
	def show
		@kite = Kite.find(params[:id])
	end