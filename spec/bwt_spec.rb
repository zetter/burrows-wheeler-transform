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

    it "encodes a longer string" do
      expect(subject.encode("Isn't the Burrows-Wheeler Transform neat?")).to eq("ermt?nst $ -rehnhelstWers afreToruwnI'a Bo")
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

    it "decodes a longer string" do
      expect(subject.decode("ermt?nst $ -rehnhelstWers afreToruwnI'a Bo")).to eq("Isn't the Burrows-Wheeler Transform neat?")
    end
  end
end