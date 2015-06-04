class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true
      t.integer :parent_id

      t.timestamps null: false
    end
    add_foreign_key :comments, :posts
  end
end
