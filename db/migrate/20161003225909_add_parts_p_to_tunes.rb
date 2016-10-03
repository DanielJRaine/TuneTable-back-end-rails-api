class AddPartsPToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :partsP, :string
  end
end
