class CreateWorld < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.text :terrain, null: false
      t.timestamps null: false
    end
  end
end
