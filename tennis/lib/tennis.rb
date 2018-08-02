class Tennis
	SCORES = {
		0 => 'love',
		1 => 15,
		2 => 30,
		3 => 40,
	}

	def initialize
		@points_server = 0
		@points_reciever = 0
	end

	def score
		return 'deuce' if deuce?
		return "#{SCORES[@points_server]} all" if points_are_equal?
		"#{SCORES[@points_server]} #{SCORES[@points_reciever]}"
	end

	def deuce?
		points_are_equal? && points_are_deuce_level?
	end
	
	def points_are_deuce_level?
		@points_server >= 3 && @points_reciever >= 3
	end

	def points_are_equal?
		@points_server == @points_reciever
	end

	def server_scores
		@points_server += 1
	end

	def receiver_scores
		@points_reciever += 1
	end
end
