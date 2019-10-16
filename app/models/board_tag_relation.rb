class BoardTagRelation < ApplicationRecord
  belongs_to :board
  belongs_to :tag
end
#中間テーブル
