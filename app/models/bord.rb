class Bord < ApplicationRecord
  has_many :commnts, dependent: :delete_all
  has_many :bord_tag_relations, dependent: :delete_all
  has_many :tags, through: :bord_tag_relations

  validates :name, presence: true, length: { maximum:10}
  validates :title, presence:true, length: { maximum: 30}
  validates :body, presence: true, length: { maximum: 1000}
end
