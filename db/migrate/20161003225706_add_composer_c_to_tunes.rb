class AddComposerCToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :composerC, :string
  end
end
