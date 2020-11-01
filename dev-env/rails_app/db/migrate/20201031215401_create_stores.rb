class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name, default: "", null: false
      t.string :owner_name, default: "", null: false

      t.timestamps
    end
  end
end
