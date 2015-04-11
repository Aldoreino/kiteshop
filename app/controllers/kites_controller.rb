class KitesController < ApplicationController
end
	def index # defines the index action
		@kites = Kite.all
	end