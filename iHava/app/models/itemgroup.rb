class Itemgroup < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :user
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 100 }
  validates :user_id, presence: true

  default_scope order: 'itemgroups.created_at DESC'
end
