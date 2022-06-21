class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :fun,             null: false, foreign_key: true
      t.references :value_creater,   null: false, foreign_key: true
      t.integer :type_id,            null: false
      t.text    :content,            null: false
      t.timestamps
    end
  end
end
