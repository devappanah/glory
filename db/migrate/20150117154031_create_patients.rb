class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.belongs_to :case, index: true

      t.timestamps null: false
    end
    add_foreign_key :patients, :cases
  end
end
