def stockpicker(days)
	low = days[0]
	profit = nil
	low_day = 0
	high_day = 0
	buy_sell = []
	days.drop(1).each_with_index do |price,index|
		if price < low
			low = price
			low_day = index + 1
		elsif price > low
			if profit.nil? || price - low > profit
				profit = price - low
				high_day = index + 1
				buy_sell = [low_day,high_day]
			end
		end
	end

	if buy_sell.empty?
		return nil
	else
		return buy_sell
	end
end

time = [17,3,6,9,15,8,6,1,10]
#time = [0,0,1,0,0,1]
p stockpicker(time)