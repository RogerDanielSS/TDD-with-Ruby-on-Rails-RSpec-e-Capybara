# frozen_string_literal: true

require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = 'SEM_NOME'
  #   @pessoa.idade = 'SEM_IDADE'
  #   puts "#{@pessoa.inspect}"
  # end

  around(:each) do |test|
    @pessoa = Pessoa.new

    test.run

    @pessoa.nome = 'SEM_NOME'
    @pessoa.idade = 'SEM_IDADE'
    puts @pessoa.inspect
  end

  it 'have_attributes: Jackson' do
    @pessoa.nome = 'Jackson'
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: 'Jackson', idade: 20)
    expect(@pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 20))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with('J'), idade: (a_value >= 20))
    # mesma coisa que a linha anterior, só que mais verboso
  end

  it 'have_attributes: Roger' do
    @pessoa.nome = 'Roger'
    @pessoa.idade = 26

    expect(@pessoa).to have_attributes(nome: 'Roger', idade: 26)
    expect(@pessoa).to have_attributes(nome: starting_with('R'), idade: (be >= 26))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with('R'), idade: (a_value >= 20))
    # mesma coisa que a linha anterior, só que mais verboso
  end
end
