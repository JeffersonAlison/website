class AddReservedToPostnotice < ActiveRecord::Migration
  def change
    add_column :postnotices, :reserved, :integer, :default => 0
  end
end
