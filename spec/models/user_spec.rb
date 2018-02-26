require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with nickname, email, password' do
    user = User.new(
        nickname: 'taro',
        email: 'test@example.com',
        password: 'password')
    expect(user).to be_valid
  end

  it 'is invalid without a nickname' do
    user = User.new(
        nickname: nil,
        email: 'test@example.com',
        password: 'password'
    )
    user.valid?
    expect(user.errors[:nickname]).to include("can't be blank")
  end
end
