class AddHistoryHToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :historyH, :string
  end
end
