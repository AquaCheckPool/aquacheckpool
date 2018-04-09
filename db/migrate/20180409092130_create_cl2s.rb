class CreateCl2s < ActiveRecord::Migration[5.1]
  def change
    create_table :cl2s do |t|
      t.float :value
      t.integer :pool_id

      t.timestamps
    end
  end
end
