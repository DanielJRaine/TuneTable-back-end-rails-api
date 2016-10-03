class TuneSerializer < ActiveModel::Serializer
  attributes :id, :ABCnotation, :tuneTitleT, :editable
  
  def editable
    scope == object.user
  end
end
