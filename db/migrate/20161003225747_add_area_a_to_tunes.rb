class AddAreaAToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :areaA, :string
  end
end
