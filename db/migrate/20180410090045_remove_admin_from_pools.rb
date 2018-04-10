class RemoveAdminFromPools < ActiveRecord::Migration[5.1]
  def change
    remove_reference :pools, :admin, foreign_key: true
  end
end
