class DiscussionsUser < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :discussion # bc it has discussion_id
  belongs_to :user # sets up has one

end
