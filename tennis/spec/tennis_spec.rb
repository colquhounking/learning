require 'spec_helper'
require 'tennis'

RSpec.describe Tennis do
  subject(:tennis) { Tennis.new }

  [
  	{ p1: 0, p2: 0, score: 'love all'},
  	{ p1: 1, p2: 0, score: '15 love'},
  	{ p1: 1, p2: 1, score: '15 all'},
  	{ p1: 2, p2: 1, score: '30 15'},
  	{ p1: 3, p2: 1, score: '40 15'},
  	{ p1: 1, p2: 3, score: '15 40'},
  	{ p1: 2, p2: 2, score: '30 all'},
  	{ p1: 3, p2: 3, score: 'deuce'},
  ].each do |args|
  	 it "p1 scores #{args[:p1]} and p2 scores #{args[:p2]} to get a score of '#{args[:score]}'" do
		args[:p1].times { tennis.server_scores }
  		args[:p2].times { tennis.receiver_scores }

    	expect(tennis.score).to eq args[:score]
  	 end
  end
end