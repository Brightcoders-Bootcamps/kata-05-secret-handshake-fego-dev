# frozen_string_literal: true

require 'rspec'
require '../app/handshake'

describe Handshake do
  it 'Expect 1 = wink with 1' do
    expect(Handshake.new(1).search_message).to eq(['wink'])
  end
  it 'Expect 3 = [wink, double blink] with 3' do
    expect(Handshake.new(3).search_message).to eq(['wink', 'double blink'])
  end
  it 'Expect 100 = close your eyes with 100' do
    expect(Handshake.new(100).search_message).to eq(['close your eyes'])
  end
  it 'Expect 1000 = jump with 1000' do
    expect(Handshake.new(1000).search_message).to eq(['jump'])
  end
  it 'Expect  [double blink, wink] with 19' do
    expect(Handshake.new(19).search_message).to eq(['double blink', 'wink'])
  end
end
