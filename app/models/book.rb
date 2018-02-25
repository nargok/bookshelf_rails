# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  users_id   :integer
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  validates :title, presence: true
end
