class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :type, null: false
      t.date :transaction_date, null: false
      t.time :transaction_time, null: false
      t.string :card_number, null: false
      t.integer :ammount, null: false
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
