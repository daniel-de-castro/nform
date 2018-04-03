class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :username, :string #:user_id, :integer
  end
end
