$count = 0

describe 'let' do
  let(:count) { $count += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1)
  end

  it 'não é chamado entre os testes' do
    expect(count).to eq(2)
  end
end
