class Pair < ActiveRecord::Base
	before_save :translate

	

	def self.piggiesfy(sentence)
		sentence.split(/\s/).map { |x| pigify(x)}.join(" ")
	end

	def pigify(word)
		back = word.split("")
		first = back.slice!(0)
		 	if !word.match(/^(a|e|i|o|u)/)		
		 		print back.join(" ") + first + "ay"
		 	else
		 		print back.join(" ") + first + "hay"
		 	end
	end

	def self.to_english
		@pig_latin = self.pig_latin
	end

	def translate
		if self.english
			self.pig_latin = self.class.piggiesfy(self.english)
		else
			self.english = self.pig_latin.to_english
		end
		self.save
	end

	private

	def pair_params 
		params.require(:pair).permit(:english, :pig_latin, :key)
	end
end
