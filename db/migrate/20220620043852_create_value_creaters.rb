class CreateValueCreaters < ActiveRecord::Migration[6.0]
  def change
    create_table :value_creaters do |t|

      t.timestamps
    end
  end
end
