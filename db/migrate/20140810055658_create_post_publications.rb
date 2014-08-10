class CreatePostPublications < ActiveRecord::Migration
  def change
    create_table :post_publications do |t|
      t.string :name, null: false
      t.string :company_url, null: false

      t.timestamps
    end
    add_index :post_publications, :name, unique: true
  end
end
