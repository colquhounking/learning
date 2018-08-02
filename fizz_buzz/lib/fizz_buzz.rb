class FizzBuzz
  def self.one_to_hundred
    (1..100).to_a.map do |number|
      fizz_buzz_number(number)
    end
  end

  private

  def self.fizz_buzz_number(number)
  	output = []
  	output << 'fizz' if divisible_by(number, 3)
  	output << 'buzz' if divisible_by(number, 5)
  	output == [] ? number : output.join
  end

  def self.divisible_by(number, dividend)
  	 (number % dividend).zero?
  end
end
