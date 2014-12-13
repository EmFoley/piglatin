def pigify(word)
	back = word.split("")
	first = back.slice!(0)
 	if !word.match(/^(a|e|i|o|u)/)		
 		puts back.join() + first + "ay"
 	else
 		puts back.join() + first + "hay"
 	end
end

pigify("cat")
pigify("elk")


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
