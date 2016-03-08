def translate(str)
	sp_str = str.split(" ")
	result = []
	sp_str.each do |word|
		if word[0].start_with?('a','e','i','o','u')
			result.push(word<<'ay')
		else
			if word[0..1].downcase=="qu"
				result.push(word[2,word.length]<<word[0..1]<<'ay')
			else
				if word[1].start_with?('a','e','i','o','u')
				    result.push(word[1,word.length]<<word[0]<<'ay')
				else
					if word[1..2].downcase=="qu"
						result.push(word[3,word.length]<<word[0..2]<<'ay')
					else
						if word[2].start_with?('a','e','i','o','u')
							result.push(word[2,word.length]<<word[0..1]<<'ay')
						else
							result.push(word[3,word.length]<<word[0..2]<<'ay')
						end
					end
				end
			end
		end
	end
	return result.join(" ")
end
