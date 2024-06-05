describe 'Test double' do
  it '-' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: '12345678')
    puts user.name
  end

  it 'as_null_object' do
    user = double('User').as_null_object # ignore 'unexpected message' errors
    allow(user).to receive_messages(name: 'Jack', password: '12345678')
    puts user.name
    user.abc
  end
end