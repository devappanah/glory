class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :price
      t.belongs_to :case, index: true

      t.timestamps null: false
    end
    add_foreign_key :treatments, :cases
  end
end
