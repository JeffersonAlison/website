class AddImageToPostnotices < ActiveRecord::Migration
  def change
    add_column :postnotices, :image, :string
  end
end
