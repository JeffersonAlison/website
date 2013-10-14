class AddVideoToPostnotice < ActiveRecord::Migration
  def change
    add_column :postnotices, :video, :string
  end
end
