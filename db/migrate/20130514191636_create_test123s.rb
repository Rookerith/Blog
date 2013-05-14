class CreateTest123s < ActiveRecord::Migration
  def change
    create_table :test123s do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
