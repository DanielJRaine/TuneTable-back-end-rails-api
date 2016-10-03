class Setlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :tune
end
