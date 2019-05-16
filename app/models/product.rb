class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category
  has_many :line_items


  validates :name, presence: true #making sure all necessary info about product is here
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true


  def it_is_sold_out?
    quantity == 0

  end


end



