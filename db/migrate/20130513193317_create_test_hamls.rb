class CreateTestHamls < ActiveRecord::Migration
  def change
    create_table :test_hamls do |t|
      t.string :haml_string
      t.integer :haml_int
      t.float :haml_float
      t.text :haml_text

      t.timestamps
    end
  end
end
