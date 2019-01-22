require 'spec_helper'
require 'pigeon_poem'

describe PigeonPoem do
	subject(:pigeon_poem) { PigeonPoem.new }
	it 'should convert A to 0' do
		expect(pigeon_poem.convert_dna_bin('A')).to eq '0'
	end
	it 'should convert T to 0' do
		expect(pigeon_poem.convert_dna_bin('T')).to eq '0'
	end
	it 'should convert C to 1' do
		expect(pigeon_poem.convert_dna_bin('C')).to eq '1'
	end
	it 'should convert G to 1' do
		expect(pigeon_poem.convert_dna_bin('G')).to eq '1'
	end
	it 'should convert GT to 10' do
		expect(pigeon_poem.convert_dna_bin('GT')).to eq '10'
	end
		it 'should convert TG to 01' do
		expect(pigeon_poem.convert_dna_bin('TG')).to eq '01'
	end
		it 'should convert TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA to see below' do
		expect(pigeon_poem.convert_dna_bin('TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA')).to eq '01001101011110010010000001100010011011110110010001111001001000000110100'
	end

	it 'should convert 01111001 to y' do
		expect(pigeon_poem.convert_bin_ascii('01111001')).to eq 'y'
	end
			it 'should convert TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA to see below' do
		expect(pigeon_poem.convert('TCTTGCAGACGCGTAGTTGTAAAATCCTAAGATCCTCCGGTGGATGATACCGGTAGATGTAATTAGGACTA')).to eq 'My body '
	end
end
