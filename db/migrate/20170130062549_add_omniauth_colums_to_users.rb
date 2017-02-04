class AddOmniauthColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string, null: false, defualt: ""
    add_column :users, :provider, :string, null: false, defualt: ""
    add_column :users, :image_url, :string
    
    add_index :users, [:uid, :provider], unique: true
  end
end
