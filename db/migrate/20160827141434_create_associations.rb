class CreateAssociations < ActiveRecord::Migration
  def change
  	#ally_categories
  	add_reference :ally_categories, :category
  	add_reference :ally_categories, :ally

  	#chat
  	add_reference :chats, :ally
  	add_reference :chats, :temp_user

    #temp_user
    add_reference :temp_users, :category
  end
end
