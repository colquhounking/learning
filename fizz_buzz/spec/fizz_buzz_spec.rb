require 'spec_helper'
require 'fizz_buzz'

RSpec.describe FizzBuzz do
  it 'returns 100 numbers' do
    expect(FizzBuzz.one_to_hundred.count).to eq 100
  end

  it 'has first number is 1' do
    expect(FizzBuzz.one_to_hundred.first).to eq 1
  end

  it 'every number divisible by 3 is replaced by fizz' do
    expect(FizzBuzz.one_to_hundred.first(3).last).to eq 'fizz' 
    expect(FizzBuzz.one_to_hundred.first(6).last).to eq 'fizz' 
  end

  it 'every number divisible by 5 is replaced by buzz' do
    expect(FizzBuzz.one_to_hundred.first(5).last).to eq 'buzz'
  end

    it 'every number divisible by 3 and 5 is replaced by fizzbuzz' do
    expect(FizzBuzz.one_to_hundred.first(15).last).to eq 'fizzbuzz'
    expect(FizzBuzz.one_to_hundred[14]).to eq 'fizzbuzz'
  end
end
