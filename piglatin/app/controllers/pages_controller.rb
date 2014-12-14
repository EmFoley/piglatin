class PagesController < ApplicationController

	def index
		@pairs = Pair.all
	end

	def new
		@pair = Pair.new()
	end

	def create
		if params[:radio_button] == 'english'
			@pair = Pair.new(english: params[:pair][:english])
		else
			@pair = Pair.new(pig_latin: params[:pair][:pig_latin])
		end	
		if @pair.save
			render partial: 'translations' 
		end
	end

	def show
		@pair = Pair.find(params[:id])
	end
	
end