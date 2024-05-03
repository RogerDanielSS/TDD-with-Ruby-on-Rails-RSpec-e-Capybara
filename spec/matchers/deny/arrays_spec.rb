# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]), 'Array' do

  it '#include/exclude' do
    expect(subject).to include(2)
    expect(subject).to exclude(4)
  end
end
