require 'spec_helper'
require 'bwt'

describe BWT do
  describe '#encode' do
    it 'encodes the empty string' do
      expect(subject.encode('')).to eq('$')
    end

    it "encodes 'hi'" do
      expect(subject.encode('hi')).to eq('i$h')
    end

    it "encodes 'banana'" do
      expect(subject.encode('banana')).to eq('annb$aa')
    end
  end

  describe '#decode' do
    it 'decodes the empty string' do
      expect(subject.decode('$')).to eq('')
    end

    it "decodes 'hi'" do
      expect(subject.decode('i$h')).to eq('hi')
    end

    it "decodes 'banana'" do
      expect(subject.decode('annb$aa')).to eq('banana')
    end
  end
end