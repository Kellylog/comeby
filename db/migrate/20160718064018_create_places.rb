class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :user_id

      t.timestamps
    end

    add_index :places, :user_id
  end
end
