class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :store, null: false, foreign_key: true
      t.integer :balance, default: 0, null: false

      t.timestamps
    end
  end
end
