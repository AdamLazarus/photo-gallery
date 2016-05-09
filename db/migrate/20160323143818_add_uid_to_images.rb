class AddUidToImages < ActiveRecord::Migration
  def change
    add_column :images, :uid, :integer
  end
end
