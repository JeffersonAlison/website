class AddFeaturedToPostnotices < ActiveRecord::Migration
  def change
    add_column :postnotices, :featured, :boolean
  end
end
