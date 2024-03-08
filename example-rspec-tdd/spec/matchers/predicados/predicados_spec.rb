# frozen_string_literal: true

describe 'Predicados' do
  it 'be_odd' do
    expect(1).to be_odd # qualquer método nativo que tem interrogação (predicado)
  end

  it 'be_nil' do
    x = nil
    expect(x).to be_nil # qualquer método nativo que tem interrogação (predicado)
  end
end
