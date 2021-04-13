class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment, null: false
      t.references :post, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false 

      t.timestamps null: false
    end
  end
end
