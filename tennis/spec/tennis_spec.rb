require 'spec_helper'
require 'tennis'

RSpec.describe Tennis do
  it 'game starts with "love all"' do
    expect(Tennis.new.score).to eq "love all"
  end
end