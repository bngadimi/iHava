class Item < ActiveRecord::Base
  attr_accessible :id, :name, :url
  belongs_to :collection

end
