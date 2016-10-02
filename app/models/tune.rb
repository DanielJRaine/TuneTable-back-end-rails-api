class Tune < ActiveRecord::Base
  belongs_to :user
  validates :name, :ABCnotation, :user, presence: true
end
