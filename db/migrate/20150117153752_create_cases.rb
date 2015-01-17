class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.text :notes
      t.datetime :appointment

      t.timestamps null: false
    end
  end
end
