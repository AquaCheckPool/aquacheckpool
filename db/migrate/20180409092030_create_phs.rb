class CreatePhs < ActiveRecord::Migration[5.1]
  def change
    create_table :phs do |t|
      t.integer :id
      t.float :value
      t.integer :pool_id
      t.datetime :date

      t.timestamps
    end
  end
end
