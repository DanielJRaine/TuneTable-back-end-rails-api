class AddMeterMToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :meterM, :string
  end
end
