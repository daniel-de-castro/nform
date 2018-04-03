class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :author
      t.text :body
      t.references :post, index: true, foreign_key: true
      t.references :user
      t.timestamps null: false
    end
  end
end
