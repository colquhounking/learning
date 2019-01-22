class PigeonPoem
	def convert(dna_string)
		bin = convert_dna_bin(dna_string)
		convert_bin_ascii(bin)
	end

	def convert_dna_bin(dna_character)
		dna_character.gsub(/[ATCG]/, 'A'=>0, 'T'=>0, 'C'=>1, 'G'=>1)
	end

	def convert_bin_ascii(binary)
		binary.scan(/0[01]{7}/).map{|b| b.prepend('0b').oct.chr}.join
	end
end