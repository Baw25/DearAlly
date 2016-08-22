class Category < ActiveRecord::Base
  has_many :discussions # defined method called discussions that references discussions with this category id
  # Remember to create a migration!
end
