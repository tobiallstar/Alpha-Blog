class Category < ActiveRecord::Base
  validates :name, presence: true, length: {in: 3...25}
  validates_uniqueness_of :name

end