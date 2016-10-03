class AddKeyKToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :keyK, :string
  end
end
