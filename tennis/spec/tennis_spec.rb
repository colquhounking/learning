require 'spec_helper'
require 'tennis'

RSpec.describe Tennis do
  subject(:tennis) { Tennis.new }

  [
  	{ p1: 0, p2: 0, score: 'love all'},
  	{ p1: 1, p2: 0, score: '15 love'},
  ].each do |args|
  	 it "p1 scores #{args[:p1]} and p2 scores #{args[:p2]} to get a score of '#{args[:score]}'" do
		args[:p1].times { tennis.server_scores }
  		args[:p2].times { tennis.receiver_scores }

    	expect(tennis.score).to eq args[:score]
  	 end
  end

  it 'game starts with "love all"' do
	0.times { tennis.server_scores }
  	0.times { tennis.receiver_scores }

    expect(tennis.score).to eq "love all"
  end

  it 'when the server scores, the score is "15 love"' do
	1.times { tennis.server_scores }
  	0.times { tennis.receiver_scores }

    expect(tennis.score).to eq "15 love"
  end

  it 'when the receiver scores after the server has scored, the score is "15 all"' do
  	1.times { tennis.server_scores }
  	1.times { tennis.receiver_scores }
    expect(tennis.score).to eq "15 all"
  end

  it 'when the server scores after 15 all, the score is "30 15"' do
  	2.times { tennis.server_scores }
  	1.times { tennis.receiver_scores }
    expect(tennis.score).to eq "30 15"
  end

  it 'when the server scores after 30 15, the score is "40 15"' do
  	3.times { tennis.server_scores }
  	1.times { tennis.receiver_scores }

    expect(tennis.score).to eq "40 15"
  end

  it 'when the reciever scores after 30 15, the score is "30 all"' do
  	2.times { tennis.server_scores }
  	2.times { tennis.receiver_scores }

    expect(tennis.score).to eq "30 all"
  end

end