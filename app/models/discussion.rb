class Discussion < ActiveRecord::Base
  belongs_to :category
  has_many :users, through: :discussions_users
  has_many :discussions_users
  # Remember to create a migration!
end
