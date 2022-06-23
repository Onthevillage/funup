class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :fun_id, null: false
      t.integer :value_creater_id, null: false      
      t.timestamps
    end
    add_index :relationships, :fun_id
    add_index :relationships, :value_creater_id
    add_index :relationships, [:fun_id, :value_creater_id], unique: true
  end
end
