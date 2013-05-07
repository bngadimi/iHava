class Collection < ActiveRecord::Base
  attr_accessible :user_id :items, :name, :tags
  has_many :items, :tags
  belongs_to :user
end
