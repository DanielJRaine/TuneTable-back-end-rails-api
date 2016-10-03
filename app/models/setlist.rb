class Setlist < ActiveRecord::Base
  belongs_to :user, inverse_of: :setlists
  belongs_to :tune, inverse_of: :setlists
end
