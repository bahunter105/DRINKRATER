class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :producer
      t.date :vintage
      t.string :origin

      t.timestamps
    end
  end
end
