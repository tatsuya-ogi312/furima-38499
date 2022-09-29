class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shipping_cost
  belongs_to :prefecture
  belongs_to :shipping_day
  belongs_to :user
  has_one_attached :image
  
  validates :name, :content, :image, presence: true
  validates :category_id, :status_id, :shipping_cost_id, :shipping_day_id, 
            :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "Out of setting range"}
  validates :price, numericality: { only_integer: true, message: "Half-width number" }

end
