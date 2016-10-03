class AddOriginOToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :originO, :string
  end
end
