class AddUnitNoteLengthLToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :unitNoteLengthL, :string
  end
end
