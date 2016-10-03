class AddTranscriptionZToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :transcriptionZ, :string
  end
end
