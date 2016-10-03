class AddTempoQToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :tempoQ, :string
  end
end
