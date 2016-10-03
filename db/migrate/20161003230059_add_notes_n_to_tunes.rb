class AddNotesNToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :notesN, :string
  end
end
