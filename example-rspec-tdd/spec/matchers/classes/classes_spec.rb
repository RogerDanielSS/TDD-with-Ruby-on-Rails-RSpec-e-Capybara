# frozen_string_literal: true

require 'string_not_empty'

describe 'Classes' do
  it 'be_instance_of' do # Exatamente a classe
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do # Pode ser por herança
    str = StringNotEmpty.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNotEmpty)
  end

  it 'respond_to' do # Método
    expect('ruby').to respond_to(:count)
    expect('ruby').to respond_to(:size)
  end

  it 'be_a / be_an' do # Ambos são a mesma coisa, só muda a leitura. Mesma coisa do be_kind_of
    expect('ruby').to be_a(String)
    expect('ruby').to be_an(String)
  end
end
