class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.string :ip
      t.references :postnotice

      t.timestamps
    end
  end
end
