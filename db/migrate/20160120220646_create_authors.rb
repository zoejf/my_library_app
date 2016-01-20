class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :year_born
      t.integer :year_died
      t.string :image

      t.timestamps null: false
    end
  end
end
