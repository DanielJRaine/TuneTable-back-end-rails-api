class AddRhythmRToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :rhythmR, :string
  end
end
