# frozen_string_literal: true

describe 'matchers de comparação numérica' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 1
    expect(5).to be >= 5
  end

  it '<' do
    expect(5).to be < 10
  end

  it '<=' do
    expect(5).to be <= 10
    expect(5).to be <= 5
  end

  it 'be_between inclusive' do
    expect(5).to be_between(5, 6)
    expect(5).to be_between(5, 6).inclusive
  end

  it 'be_between inclusive / agregadas' do
    aggregate_failures do
      expect(5).to be_between(5, 6)
      expect(5).to be_between(5, 6).inclusive
      # expect(7).to be_between(5, 6).inclusive
      # expect(4).to be_between(5, 6)
    end
  end

  it 'be_between inclusive / agregadas2', :aggregate_failures do
    expect(5).to be_between(5, 6)
    expect(5).to be_between(5, 6).inclusive
    # expect(7).to be_between(5, 6).inclusive
    # expect(4).to be_between(5, 6)
  end

  it 'be_between exclusive' do
    expect(5).to be_between(4, 6).exclusive
  end
end

describe 'matchers de comparação de arranjos' do
  it 'match' do
    expect('fulano@email.com').to match(/..@../)
  end

  it 'start_with' do
    expect('fulano@email.com').to start_with('fulano')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end_with' do
    expect('fulano@email.com').to end_with('com')
    expect([1, 2, 3]).to end_with(3)
  end
end
