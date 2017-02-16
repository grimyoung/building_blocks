#works so long as ascii encoding doesn't change

def caesar(string, shift)
	cipher =""
	string.scan(/./) do |letter|
		num = letter.ord
		if num >= 65 && num <=90
			num = (num-65 + (shift.to_i))%26 + 65
		elsif num >= 97 && num <=122
			num = (num-97 + (shift.to_i))%26 + 97
		end
		cipher += num.chr
	end
	cipher
end

puts "Enter String:"
input_string = gets.chomp
puts "Enter shift factor:"
input_shift = gets.chomp
puts caesar(input_string,input_shift)