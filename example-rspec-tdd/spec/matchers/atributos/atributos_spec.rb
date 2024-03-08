# frozen_string_literal: true

require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'Jackson'
    pessoa.idade = 20

    expect(pessoa).to have_attributes(nome: 'Jackson', idade: 20)
    expect(pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 20))
    expect(pessoa).to have_attributes(nome: a_string_starting_with('J'), idade: (a_value >= 20))
    # mesma coisa que a linha anterior, só que mais verboso
  end
end
