class AllyCategory < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :allies
  belongs_to :categories
end
