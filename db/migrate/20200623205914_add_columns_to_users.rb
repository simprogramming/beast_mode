class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :about, :text
    add_column :users, :birthday, :date
    add_column :users, :spirit_animal, :string
  end
end
