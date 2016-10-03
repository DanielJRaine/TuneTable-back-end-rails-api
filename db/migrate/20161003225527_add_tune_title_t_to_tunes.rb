class AddTuneTitleTToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :tuneTitleT, :string
  end
end
