class PagesController < ApplicationController

	def index
		@pairs = Pair.all
	end

	def new
		@pair = Pair.new()
	end

	def create
		@pair = Pair.new(params[:pair])
		if @pair.save
			render partial: 'translations' 
		end
	end

	def show
		@pair = Pair.find(params[:key])
	end
	
end