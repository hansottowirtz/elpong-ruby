require 'spec_helper'

describe Elpong::Scheme do
  pulser_scheme = nil

  it 'should load the correct scheme' do
    pulser_scheme = Elpong::Scheme.new("#{Elpong.root}/spec/fixtures/pulser/scheme.json")
    expect(pulser_scheme.name).to be == 'pulser'
  end

  it 'should find the right default scheme' do
    expect(Elpong.default_scheme).to be pulser_scheme
  end

  it 'should find the right scheme by name' do
    expect(Elpong.get('pulser')).to be pulser_scheme
  end
end
