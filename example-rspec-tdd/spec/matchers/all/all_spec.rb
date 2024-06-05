# frozen_string_literal: true

# execute with rspec . -t array (tag_filters)
# execute with rspec . -t ~array (exclude array)

describe 'all', :array do
  it { expect([1, 7, 9]).to all be_odd.and be_an(Integer) }
  it { expect(%w[rails ruby]).to all include('r').and be_an(String) }
end
