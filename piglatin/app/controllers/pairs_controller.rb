class PairsController < ApplicationController
	def index
		@pair = Pair.new
		@pairs = Pair.all
	end

	def new
		@pair = Pair.new
	end

	def create
		@pair = Pair.create(pair_params)
		if @pair.save
		  render :template => '/pairs/_create.js.erb'
		 end
	end

	def show
		@pair = Pair.find(params[:id])
		@keyed = Pair.where(key: params[:key])
	end

	def pair_params 
		params.require(:pair).permit(:english, :pig_latin, :key)
	end
end