class Tag < ApplicationRecord
  has_many :bord_tag_relations
  has_many :bords, through: :bord_tag_relations
end
