# frozen_string_literal: true

describe 'Output' do
  it 'Matcher output' do
    expect{ puts 'Roger Roger' }.to output.to_stdout 
  end
end
