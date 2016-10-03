class CreateSetlists < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.string :name
      t.string :description
      t.references :user, index: true, foreign_key: true
      t.references :tune, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
