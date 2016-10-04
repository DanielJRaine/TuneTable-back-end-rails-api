class TuneSerializer < ActiveModel::Serializer
  attributes :id, :ABCnotation, :user_id, :tuneTitleT, :composerC, :originO, :areaA, :meterM, :unitNoteLengthL, :tempoQ, :partsP, :transcriptionZ, :notesN, :groupG, :historyH, :keyK, :rhythmR, :editable
  
  def editable
    scope == object.user
  end
end
