# To-do
# - Takes an array of stock prices
# - Return a pair of days: [best to buy, best to sell]
# * Days start at 0
# * You need to buy before you can sell
# * Edge cases: lowest day is last day OR highest day is first day
# ? Alternative method: find maximum sum subarray of differences
# https://www.geeksforgeeks.org/maximum-difference-between-two-elements/

def stock_picker(array)
  # Initialize
  max_profit = array[1] - array[0]
  buy_date_index = 0
  sell_date_index = 1

  array.each_with_index do |sell_price, sell_index|
    next if sell_index == 0
    array[0...sell_index].each_with_index do |buy_price, buy_index|
      if sell_price - buy_price > max_profit
        max_profit = sell_price - buy_price
        buy_date_index = buy_index
        sell_date_index = sell_index
      end
    end
  end
  p [buy_date_index, sell_date_index]
end