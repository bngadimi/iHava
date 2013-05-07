class Collection < ActiveRecord::Base
  attr_accessible :items, :name, :tags
  has_many :items
  belongs_to :user
end
