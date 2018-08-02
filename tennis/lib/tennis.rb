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
		if points_are_equal?
			"#{SCORES[@points_server]} all"
		else
			"#{SCORES[@points_server]} #{SCORES[@points_reciever]}"
		end
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
