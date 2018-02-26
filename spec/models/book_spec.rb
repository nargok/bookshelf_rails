# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'rails_helper'

RSpec.describe Book, type: :model do
    let!(:user) { User.create(
                  email: "test@example.com",
                  nickname: "taro",
                  password: "foobar"
    )}

  it "is valid with a title" do
    book = Book.create(
                   user_id: user.id,
                   title: "Ruby on Rails"
    )
    expect(book).to be_valid
  end

  it "is invalid without a title" do
    book = Book.create(
        user_id: user.id,
        title: nil
    )
    book.valid?
    expect(book.errors[:title]).to include("can't be blank")
  end
end
