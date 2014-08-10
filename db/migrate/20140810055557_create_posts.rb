class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.integer :post_type_id, null: false, default: 1
		t.integer :category_id, null: false
		t.string :title, null: false
		t.text :body, null: false
    t.integer :site_author_id, null: false, default: 1
    t.boolean :publish_ind, default: false
    t.text :video_url
    t.integer :article_author_id, null: false
    t.integer :post_publication_id, null: false
    t.text :article_title, null: false
    t.text :article_url, null: false
    t.string :slug, null: false

      t.timestamps
    end
    add_index :posts, :category_id
    add_index :posts, :title
    add_index :posts, :site_author_id
    add_index :posts, :post_type_id
    add_index :posts, :slug, unique: true
    add_index :posts, :article_author_id
    add_index :posts, :post_publication_id
  end
end
