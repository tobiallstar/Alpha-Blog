class Article < ActiveRecord::Base
  validates :title, presence: true, length: { mininum: 3, maximum: 50}
  validates :description, presence: true, length: { mininum: 10, maximum: 300 }
end
