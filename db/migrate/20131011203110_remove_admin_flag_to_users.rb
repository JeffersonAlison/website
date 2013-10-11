class RemoveAdminFlagToUsers < ActiveRecord::Migration
  def up
    remove_column :users, :admin
  end

  def down
    add_column :users, :admin, :bool
  end
end
