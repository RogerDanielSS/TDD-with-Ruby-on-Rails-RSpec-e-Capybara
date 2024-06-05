describe 'Test double' do
  it '-' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: '12345678')
    puts user.name
  end
end