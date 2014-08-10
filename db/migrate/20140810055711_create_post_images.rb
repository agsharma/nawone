class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.integer :post_id, null: false
      t.string :post_image, null: false
      t.integer :priority, null: false, default: 1

      t.timestamps
    end
    add_index :post_images, :post_id
    add_index :post_images, :priority
    add_index :post_images, [:priority, :post_id], unique: true
  end
end
