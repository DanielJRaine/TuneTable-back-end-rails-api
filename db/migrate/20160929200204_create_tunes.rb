class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :ABCnotation
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
      # add_foreign_key :tunes, :users
  end
end
