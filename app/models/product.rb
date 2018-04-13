class Product < ApplicationRecord
  belongs_to :category

  scope :filter_by_category, -> category_id{
    where category_id: category_id if category_id.present?
  }

  scope :filter_by_name, -> name{
    where "name like ?", "%#{name}%" if name.present?
  }
end
