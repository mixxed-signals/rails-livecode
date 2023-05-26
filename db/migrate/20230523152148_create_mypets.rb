class CreateMypets < ActiveRecord::Migration[7.0]
  def change
    create_table :mypets do |t|
      t.string :name
      t.string :address
      t.string :species
      t.date :found_on

      t.timestamps
    end
  end
end
