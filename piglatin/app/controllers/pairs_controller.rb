class PairsController < ApplicationController
	respond_to :json

	def index
		@pair = Pair.new
		# if params[:search]
		# 	keypair = Pair.where(key: params[:search])
		# 	respond_with keypair
		# else
		# 	# alert("Pair not found! Enter your phrase to translate at the top!")
		# end
	end

	def new
		@pair = Pair.new
	end

	def create
		english = pair_params[:english] || PigIt.to_english(pair_params[:pig_latin]) 
		pig_latin = pair_params[:pig_latin] || PigIt.to_pig_latin(pair_params[:english]) 
		pair = Pair.create(english: english, pig_latin: pig_latin, key: Faker::Number.number(4))
		respond_with pair
	end

	def show
		@pair = Pair.find(params[:id])
		
	end

	private

		def pair_params 
			params.require(:pair).permit(:english, :pig_latin, :key)
		end


end