class Chat < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :ally
  belongs_to :temp_user
end
