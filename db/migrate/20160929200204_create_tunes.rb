class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :ABCnotation

      t.timestamps null: false
    end
  end
end
