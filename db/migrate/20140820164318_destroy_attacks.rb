class DestroyAttacks < ActiveRecord::Migration
  def change
    drop_table :attacks
  end
end
