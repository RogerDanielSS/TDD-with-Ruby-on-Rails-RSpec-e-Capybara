# frozen_string_literal: true

describe 'Predicados' do
  it 'Matcher output' do
    it { expect{ puts 'Roger Roger' }.to output.to_stdout }
  end
end
