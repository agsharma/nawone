class CreatePostTypes < ActiveRecord::Migration
  def change
    create_table :post_types do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
    add_index :post_types, :name, unique: true
  end
end
