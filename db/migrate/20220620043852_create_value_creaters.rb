class CreateValueCreaters < ActiveRecord::Migration[6.0]
  def change
    create_table :value_creaters do |t|
      t.string  :name_workplace,        null: false
      t.text    :address_workplace,     null: false
      t.text    :introduction,          null: false
      t.references :fun,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
