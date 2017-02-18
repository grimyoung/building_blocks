def substrings (string, dictionary)
	answer = {}
	dictionary.each do |sub|
		if sub.length <= string.length
			count = string.downcase.scan(/#{sub.downcase}/).length
			if count > 0
				answer[sub] = count
			end
		end
	end
	return answer
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)