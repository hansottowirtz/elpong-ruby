require 'spec_helper'

describe HTTPong::Scheme do
  pulser_scheme = nil

  it 'should load the correct scheme' do
    pulser_scheme = HTTPong::Scheme.new("#{HTTPong.root}/spec/fixtures/pulser/scheme.cson")
    expect(pulser_scheme.name).to be == 'pulser'
  end

  it 'should find the right default scheme' do
    expect(HTTPong.default_scheme).to be pulser_scheme
  end

  it 'should find the right scheme by name' do
    expect(HTTPong.get_scheme('pulser')).to be pulser_scheme
  end
end
