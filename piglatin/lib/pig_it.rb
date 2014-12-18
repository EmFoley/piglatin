module PigIt 

	extend self

	def pigify(word)
		back = word.split("")
		first = back.slice!(0)
	 	if !word.match(/^(a|e|i|o|u)/)		
	 		back.join("") + first + "ay" + " "
	 	else
	 		back.join("") + first + "hay" + " "
	 	end
	end

	def to_pig_latin(sentence)
		sentence.split(/\s/).map { |x| pigify(x)}.join(" ")
	end

	def anglify(word)
		word.gsub!(/(ay)/, '')
		back = word.split('')
		first = back.slice!(-1)
		english = back.insert(0,first).join()
	end

	def to_english(sentence)
		sentence.split(/\s/).map { |x| anglify(x)}.join("")
	end
end

# pig
# igpay

# Pig Latin Translator:
# Rules:
# - All words beginning with a consonant have their first letter moved to the end of word followed by ‘ay’. Hello -> Ellohay
# - All words beginning with a vowel have their first letter moved to the end moved to the word followed by ‘hay’. Another -> Notherahay
# - All punctuation must be kept in place for example:
# Bacon is awesome! Sometimes, in the morning, I’ll have bacon on toast for breakfast.
# Aconbay sihay wesomeahay! Ometimessay, nihay hetay orningmay, ‘llihay avehay aconbay nohay oasttay orfay reakfastbay. 

# Step 2:
# Provide a reverse translator

# Step 3:
# For each pig latin translation and reverse, store it in the DB and provide back a key to the user so they can use it. When they enter the key, they get the translation and reverse.
