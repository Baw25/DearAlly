class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ally_categories
  has_many :temp_users
  has_many :allies, through: :ally_categories
end
