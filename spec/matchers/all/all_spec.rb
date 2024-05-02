# frozen_string_literal: true

describe 'all' do
  it { expect([1, 7, 9]).to all be_odd.and be_an(Integer) }
  it { expect(%w[rails ruby]).to all include('r').and be_an(String) }
end
