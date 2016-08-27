class CreateTablesAndModels < ActiveRecord::Migration
  def change
  	create_table :allies do |t|
  		t.string :email
  		t.string :name
      t.string :password_hash
  		t.integer :rating
  		t.boolean :available?, default: :false
  		t.timestamps
  	end

  	create_table :temp_users do |t|
  		t.string :category
  		t.timestamps
  	end

  	create_table :categories do |t|
  		t.string :title
  		t.timestamps
  	end

  	create_table :ally_categories do |t|
  		t.string :body
  	end

  	create_table :chats do |t|
  		t.timestamps
  	end
  end
end
