class Article < ActiveRecord::Base
  has_many :category

  validates_presence_of :title
  validates_presence_of :caption 
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('title')
end
