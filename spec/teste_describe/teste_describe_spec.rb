# frozen_string_literal: true

describe 'roger' do
  it 'use description as subject' do
    expect(subject.size).to eq(5)
  end
end

describe [1, 2] do
  it 'use description as subject' do
    expect(subject).to be_kind_of(Array)
  end
end
