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

class Book < ApplicationRecord
  belongs_to :user, inverse_of: :books
  validates :title, presence: true
end
