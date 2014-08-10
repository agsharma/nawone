class CreateSiteAuthors < ActiveRecord::Migration
  def change
    create_table :site_authors do |t|
      t.string :fullname, null: false
      t.string :naw_email, null: false
      t.string :personal_email, null: false
      t.column :personal_phone, :bigint

      t.timestamps
    end
    add_index :site_authors, :fullname
    add_index :site_authors, :naw_email
  end
end
