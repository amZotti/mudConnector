class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.string :attack_type, null: false
      t.timestamps null: false
    end
    add_index :attacks, :target_id
  end
end
