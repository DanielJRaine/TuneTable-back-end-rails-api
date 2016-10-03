class AddGroupGToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :groupG, :string
  end
end
