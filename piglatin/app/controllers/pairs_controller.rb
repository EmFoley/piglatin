class PairsController < ApplicationController
	respond_to :html, :js

	def index
		@pair = Pair.new
		@pairs = Pair.all
	end

	def new
		@pair = Pair.new
	end

	def create
		@pair = Pair.create(pair_params)
	end

	def show
		@pair = Pair.where(key: params[:key])
	end
	
	private

	def pair_params 
		params.require(:pair).permit(:english, :pig_latin, :key)
	end
end