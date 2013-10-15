class AddDescBannerToPostnotice < ActiveRecord::Migration
  def change
    add_column :postnotices, :descbanner, :text
  end
end
