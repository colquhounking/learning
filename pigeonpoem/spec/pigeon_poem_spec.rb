require 'spec_helper'
require 'pigeon_poem'

describe PigeonPoem do
	subject(:pigeon_poem) { PigeonPoem.new }
	it 'should convert ATCG to 0011' do
		expect(pigeon_poem.convert_dna_bin('ATGC')).to eq '0011'
	end
	
	it 'should convert ACGCGTAG to 01111001' do
		expect(pigeon_poem.convert_dna_bin('ACGCGTAG')).to eq '01111001'
	end

	it 'should convert 01111001 to y' do
		expect(pigeon_poem.convert_bin_ascii('01111001')).to eq 'y'
	end

	it 'should convert TCTTGCAGACGCGTAG to My' do
		expect(pigeon_poem.convert('TCTTGCAGACGCGTAG')).to eq 'My'
	end
end
