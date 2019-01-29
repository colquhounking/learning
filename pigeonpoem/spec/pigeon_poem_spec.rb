require 'spec_helper'
require 'pigeon_poem'

describe PigeonPoem do
	subject(:pigeon_poem) { PigeonPoem.new }
	it 'should convert ATCG to 0011' do
		expect(pigeon_poem.convert_dna_bin('ATGC')).to eq '0011'
	end
	
	it 'should convert TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA to 01001101011110010010000001100010011011110110010001111001001000000110100' do
		expect(pigeon_poem.convert_dna_bin('TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA')).to eq '01001101011110010010000001100010011011110110010001111001001000000110100'
	end

	it 'should convert 01111001 to y' do
		expect(pigeon_poem.convert_bin_ascii('01111001')).to eq 'y'
	end

	it 'should convert TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA to see below' do
		expect(pigeon_poem.convert('TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA')).to eq 'My body '
	end
end
