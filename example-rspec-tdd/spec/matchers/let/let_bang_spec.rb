
$counter = 0

describe 'let' do
  ordem_de_invocacao = []

  let!(:count) do
    ordem_de_invocacao << :let!
    $counter += 1
  end

  it 'chama o método helper antes do teste' do
    ordem_de_invocacao << :exemplo

    expect(ordem_de_invocacao).to eq(%i[let! exemplo])
    expect(count).to eq(1)
  end
end
