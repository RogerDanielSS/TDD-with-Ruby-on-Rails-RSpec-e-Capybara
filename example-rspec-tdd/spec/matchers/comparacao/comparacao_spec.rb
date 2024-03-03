# frozen_string_literal: true

describe 'matchers de comparação' do
  it '#equal' do
    x = String.new('ruby')
    y = String.new('ruby')
    expect(x).not_to equal(y)
  end

  it '#be' do
    x = 'ruby'
    y = 'ruby'

    y += ''
    expect(x).not_to be(y)
  end

  it '#eq' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end

  it '#eql' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end
end
