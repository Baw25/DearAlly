class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :discussions, through: :discussions_users
  has_many :discussions_users
end
