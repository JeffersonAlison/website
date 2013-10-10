class CreatePostnotices < ActiveRecord::Migration
  def change
    create_table :postnotices do |t|
      t.string :title
      t.text :content
      t.string :author
      t.references :city
      t.references :categorie

      t.timestamps
    end
    add_index :postnotices, :city_id
    add_index :postnotices, :categorie_id
  end
end
