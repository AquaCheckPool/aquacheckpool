class CreateCl2s < ActiveRecord::Migration[5.1]
  def change
    create_table :cl2s do |t|
      t.integer :id
      t.float :value
      t.integer :pool_id
      t.datetime :date

      t.timestamps
    end
  end
end
