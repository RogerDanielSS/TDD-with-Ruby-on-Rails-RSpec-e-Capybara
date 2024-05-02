# frozen_string_literal: true

# require_relative '../../helpers/helpers'

# RSpec.configure do |config|
#   config.include Helper
# end

describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(frutas).to eq('banana').or eq('laranja').or eq('uva') }

  # helper method arbitrário
  # def frutas
  #   %w[banana laranja uva].sample
  # end
end
