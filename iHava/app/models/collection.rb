class Collection < ActiveRecord::Base
  attr_accessible :items, :name, :tags
end
