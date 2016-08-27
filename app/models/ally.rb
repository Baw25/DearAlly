class Ally < ActiveRecord::Base
  # Remember to create a migration!
  has_many :chat
  has_many :ally_category
  has_many :categories, through: :ally_categories
end
