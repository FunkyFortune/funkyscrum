class RemoveDevise < ActiveRecord::Migration
  def self.up
    # get ride of devise columns on the user model
    remove_column :users, :email
    remove_column :users, :encrypted_password
    remove_column :users, :reset_password_token
    remove_column :users, :remember_created_at
    remove_column :users, :sign_in_count
    remove_column :users, :current_sign_in_at
    remove_column :users, :last_sign_in_at
    remove_column :users, :current_sign_in_ip
    remove_column :users, :last_sign_in_ip
  end

  def self.down
    # add in devise columns 
    add_column :users, :email, :string
    add_column :users, :encrypted_password, :string
    add_column :users, :reset_password_token, :string
    add_column :users, :remember_created_at, :datetime
    add_column :users, :sign_in_count, :integer
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :string
    add_column :users, :last_sign_in_ip, :string
  end
end
