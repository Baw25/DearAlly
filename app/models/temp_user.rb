class TempUser < ActiveRecord::Base
  # Remember to create a migration!
  has_many :categories
end
	