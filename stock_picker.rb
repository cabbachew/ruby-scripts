# To-do
# - Takes an array of stock prices
# - Return a pair of days: [best to buy, best to sell]
# * Days start at 0
# * You need to buy before you can sell
# * Edge cases: lowest day is last day OR highest day is first day
# ? Alternative method: find maximum sub subarray of differences

def stock_picker(array)
  p sorted_prices = array.each_with_index.max(array.length)

  # initialize variables to return
  buy_on_index = 0
  sell_on_index = 1
  max_profit = array[1] - array[0]
  min_price = array[0]
  min_price_index = 0

  array.each_with_index do |price, index|
    if price - min_price > max_profit
      max_profit = price - min_price
      sell_on_index = index
      buy_on_index = min_price_index
    end
    if price < min_price
      min_price = price
      min_price_index = index
    end
  end
  p [buy_on_index, sell_on_index, max_profit]
end


# Test
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]  # for a profit of $15 - $3 == $12
puts ''
stock_picker([2, 3, 10, 6, 4, 8, 1])
# => [0, 2] # for a profit of $10 - $2 = $8
puts ''
stock_picker([7, 9, 5, 6, 3, 2])
# => [0, 1] # for a profit of $9 - $7 = $2