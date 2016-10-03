class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :tunes, through: :setlists
  has_many :setlists
end
