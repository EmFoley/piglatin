require 'pry'

class PairsController < ApplicationController
	respond_to :json

	def index
		@pair = Pair.new
		if params[:search]
			keypair = Pair.where(key: params[:search]).first
			render :json => keypair.to_json
		# else
		# 	# alert("Pair not found! Enter your phrase to translate at the top!")
		end
	end

	def create
		if params[:english] != ""
			english = params[:english]
			pig_latin = PigIt.to_pig_latin(english) 
		elsif params[:pig_latin]
			pig_latin = params[:pig_latin]
			english = PigIt.to_english(pig_latin) 
		end	
		pair = Pair.create(english: english, pig_latin: pig_latin, key: Faker::Number.number(4))
		render :json => pair.to_json
	end

	private

		def pair_params 
			params.require(:pair).permit(:english, :pig_latin, :key)
		end


end