class TuneSerializer < ActiveModel::Serializer
  attributes :id, :name, :ABCnotation, :editable
  
  def editable
    scope == object.user
  end
end
