class Item < ActiveRecord::Base
  attr_accessible :color, :description, :firm, :model_name, :price

  validates :color, :description, :firm, :model_name, :price, presence: true
  validates :firm, :model_name,  presence: true, length: { maximum: 30 }
  validates :price, :numericality => { only_float: true, greater_than: 0 }
end
