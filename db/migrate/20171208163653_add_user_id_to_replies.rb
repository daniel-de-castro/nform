class AddUserIdToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :username, :string
  end
end
