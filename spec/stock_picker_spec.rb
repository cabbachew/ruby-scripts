require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'Stock Picker' do

  it 'works when first date has highest price' do
    date_prices = [17,3,6,9,15,8,6,1,10]
    expect(stock_picker(date_prices)).to eq([1, 4])
  end

  it 'generally works' do
    date_prices = [2, 3, 10, 6, 4, 8, 1]
    expect(stock_picker(date_prices)).to eq([0, 2])
  end

  it 'generally works again' do
    date_prices = [7, 9, 5, 6, 3, 2]
    expect(stock_picker(date_prices)).to eq([0, 1])
  end

  it 'works prices only descend' do
    date_prices = [5, 4, 3, 2, 1]
    expect(stock_picker(date_prices)).to eq([0, 1])
  end

end