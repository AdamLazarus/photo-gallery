class ChangeUidToUserId < ActiveRecord::Migration
  def change
    rename_column :images, :uid, :user_id
  end
end
