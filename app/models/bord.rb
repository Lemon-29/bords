class Bord < ApplicationRecord
  has_many :commnts
  validates :name, presence: true, length: { maxim:10}
  validates :title, presence:true, length: { maximum: 30}
  validates :body, presence: true, length: { maximum: 1000}
end
