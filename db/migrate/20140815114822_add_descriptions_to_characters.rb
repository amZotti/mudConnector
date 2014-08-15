class AddDescriptionsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :name, :string, null: false, default: "User"
  end
end
