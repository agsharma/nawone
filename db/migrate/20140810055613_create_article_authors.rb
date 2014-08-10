class CreateArticleAuthors < ActiveRecord::Migration
  def change
    create_table :article_authors do |t|
      t.string :fullname, null: false
      t.string :email

      t.timestamps
    end
    add_index :article_authors, :fullname
  end
end
