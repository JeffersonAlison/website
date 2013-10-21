class AddStartdateToPostnotice < ActiveRecord::Migration
  def change
    add_column :postnotices, :startdate, :date
  end
end
