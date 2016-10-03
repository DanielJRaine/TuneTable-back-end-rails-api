class Tune < ActiveRecord::Base
  belongs_to :user
  validates :tuneTitleT, :ABCnotation, :user, presence: true
end
